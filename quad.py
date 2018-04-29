"""
Quadrature sets

Lewis and Miller, Computational Neutron Transport, c 1984
Table 3-1
"""

from numpy import array, float64, empty
from jinja2 import Template

def _generateSN(mus, weights):
    if isinstance(mus, (float, int)):
        mus = [mus]
    if isinstance(weights, (float, int)):
        weights = [weights]
    mus = array(mus, dtype=float64)
    weights = array(weights, dtype=float64)
    assert mus.size == weights.size
    n = mus.size
    quad = empty((2 * n, 2), dtype=float64, order='F')
    quad[:n, 0] = - mus[::-1]
    quad[n:, 0] = mus
    quad[:n, 1] = weights[::-1]
    quad[n:, 1] = weights
    return quad

mus = {}
weights = {}

mus[2] = 0.5773502691
weights[2] = 1.0


mus[4] = [0.3399810435, 0.8611363115]
weights[4] = W4 = [0.6521451549, 0.3478548451]

mus[8] = [0.1834346424, 0.5255324099, 0.7966664774, 0.9602898564]
weights[8] = [0.3626837834, 0.3137066459, 0.2223810344, 0.1012285363]


def getQuadrature(order):
    return _generateSN(mus[order], weights[order])

#
# Quadrature to latex
#
quadTemplate = Template(r"""
\begin{table}[h!]
    \caption{S-{{order}} Weights and Angles}
    \label{tb:s{{order}}quad}
    \centering
    \begin{tabular}{cc}
        \toprule
        $\mu_m$ & $w_m$ \\
        \midrule
        {%- for (angle, weight) in quadSet[order // 2:] %}
        {{angle}} & {{weight}} \\
        {%- endfor %}
        \bottomrule
    \end{tabular}
\end{table}
""")

def quadToTex(order, output=None):
    qset = getQuadrature(order)
    output = output or "s{}.tex".format(order)
    rendered = quadTemplate.render(quadSet=qset, order=order)
    with open(output, 'w') as out:
        out.write(rendered)
    return rendered


