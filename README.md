<div align="center">
<img alt="Stellar" src="https://github.com/stellar/.github/raw/master/stellar-logo.png" width="558" />
<br/>
<strong>Creating equitable access to the global financial system</strong>
<h1>Stellar Protocol</h1>
</div>
<p align="center">
<a href="./core/README.md"><img alt="Docs: CAPs" src="https://img.shields.io/badge/docs-CAPs-blue" /></a>
<a href="./ecosystem/README.md"><img alt="Docs: SEPs" src="https://img.shields.io/badge/docs-SEPs-blue" /></a>
<a href="./limits/README.md"><img alt="Docs: SLPs" src="https://img.shields.io/badge/docs-SLPs-blue" /></a>
</p>

This repository is home to **Core Advancement Proposals** (CAPs), **Stellar Ecosystem Proposals**
(SEPs), and **Stellar Limits Proposals** (SLPs).

Similar to [BIPs](https://github.com/bitcoin/bips) and [EIPs](https://github.com/ethereum/EIPs),
CAPs, SEPs, and SLPs are the proposals of standards to improve the Stellar protocol, related client
APIs, and smart contract resource limits.

CAPs deal with changes to the core protocol of the Stellar network. Please see [the process for CAPs](core/README.md).

SEPs deal with changes to the standards, protocols, and methods used in the ecosystem built on top
of the Stellar network. Please see [the process for SEPs](ecosystem/README.md).

SLPs deal with changes to Soroban smart contract resource limits. Please see
[the process for SLPs](limits/README.md).

## Repository structure

The root directory of this repository contains:

* Templates for creating your own CAP or SEP
* `contents` directory with `[cap | sep | slp]-xxxx` subdirectories that contain all media/script files for a given CAP, SEP, or SLP document.
* core directory which contains accepted CAPs (`cap-xxxx.md` where `xxxx` is a CAP number with leading zeros, ex. `cap-0051.md`)
* ecosystem directory which contains accepted SEPs (`sep-xxxx.md` where `xxxx` is a SEP number with leading zeros, ex. `sep-0051.md`)
* limits directory which contains accepted SLPs (`slp-xxxx.md` where `xxxx` is an SLP number with leading zeros, ex. `slp-0001.md`)

Example repository structure:
```
├── CONTRIBUTING.md
├── README.md
├── cap-template.md
├── contents
│   └── cap-0003
│       └── get_offer_stats.sql
├── core
│   ├── cap-0001.md
│   ├── cap-0002.md
│   ├── cap-0003.md
│   └── README.md
├── ecosystem
│   ├── README.md
│   ├── sep-0001.md
│   ├── sep-0002.md
│   ├── sep-0003.md
├── limits
│   ├── README.md
└── sep-template.md
```

## Contributing

See [CONTRIBUTING](CONTRIBUTING.md) to learn how to contribute.

[Stellar Development Foundation]: https://stellar.org
