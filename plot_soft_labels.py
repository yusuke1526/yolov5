import matplotlib.pyplot as plt

from utils.loss import ComputeLoss

metric = 'custom'
cls_num = 5

kwargs = {
    'metric': metric,
    'cls_num': cls_num,
    'model': None,
    'ordinal_cls': True,
    'peak': None,
    's': None,
    'label_plot_mode': True
}

compute_loss = ComputeLoss(**kwargs)
labels = compute_loss.get_soft_labels()
print(labels)
labels = labels.cpu().detach().numpy()
fig = plt.figure(figsize=(5, 2.5))
plt.ylim(-0.1, 1)
plt.xticks([i+1 for i in range(cls_num)])
x = [i+1 for i in range(cls_num)]
markers = ['o', 's', 'v', 'x', '1']
for i, (label, marker) in enumerate(zip(labels, markers)):
    plt.plot(x, label, marker=marker, label=f'label {i+1}')
plt.legend()
plt.tight_layout()
plt.subplots_adjust(bottom=0.2)
plt.xlabel('deterioration rate')
plt.savefig(f'soft_labels_{metric}.png')
