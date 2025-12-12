import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(1.0, 2.0, 500)
plt.plot(x, np.log2(x), label=r'$\log_2(x)$')
plt.plot(x, x - 1, '--', label=r'$x - 1$')
plt.legend()
plt.xlabel('x')
plt.ylabel('value')
plt.tight_layout()
plt.savefig('assets/images/log2.png', dpi=150)

