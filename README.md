[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h3 align="center">QBFT private test network</h3>

  <p align="center">
    A private network provides a configurable network for testing
    <br />
    <a href="https://github.com/ccr5/hyperledger-private-blockchain"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ccr5/hyperledger-private-blockchain/issues">Report Bug</a>
    ·
    <a href="https://github.com/ccr5/hyperledger-private-blockchain/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#what-is-hyperledger-besu">What is Hyperledger Besu?</a></li>
        <li><a href="#what-is-qbft">What is QBFT?</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li>
      <a href="#usage">Usage</a>
      <ul>
        <li><a href="#binary">binary</a></li>
        <li><a href="#docker">docker</a></li>
      </ul>
    </li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This is a simple private network using hyperledger besu. 

### What is Hyperledger Besu?
Hyperledger Besu is an Ethereum client designed to be enterprise-friendly for both public and private permissioned network use cases, with an extractable EVM implementation.

### What is QBFT?
QBFT is a Proof of Authority (PoA) consensus protocol. QBFT is the recommended enterprise-grade consensus protocol for private networks.

In QBFT networks, approved accounts, known as validators, validate transactions and blocks. Validators take turns to create the next block. Before inserting the block onto the chain, a super-majority (greater than or equal to 2/3) of validators must first sign the block.


<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running, follow these simple steps.

### Prerequisites

* <a href="https://besu.hyperledger.org/stable/private-networks/get-started/install/binary-distribution">Hyperledger besu </a>

### Installation

1. Clone this repository
```shell
git clone https://github.com/ccr5/hyperledger-private-blockchain.git
```
2. Install all dependencies.

3. Export besu binary
```shell
export PATH=$PATH:~/path/to/your/bin
```

## Usage


### binary

1. Update permissions and run 'start.sh' file 
```shell
chmod 777 start.sh && ./start.sh
```

2. run the first node 
```shell
chmod 777 run-node1.sh && ./run-node1.sh
```

3. change the bootnode enode url in others 'run-node.sh' files and execute them.

4. Usage 'api.http' file or other tool to interacte with.


### docker


<!-- CONTACT -->
## Contact

Matheus Nobre Gomes - matt-gomes@live.com

Project Link: [https://github.com/ccr5/hyperledger-private-blockchain](https://github.com/ccr5/hyperledger-private-blockchain)



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/ccr5/hyperledger-private-blockchain.svg?style=for-the-badge
[contributors-url]: https://github.com/ccr5/hyperledger-private-blockchain/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ccr5/hyperledger-private-blockchain.svg?style=for-the-badge
[forks-url]: https://github.com/ccr5/hyperledger-private-blockchain/network/members
[stars-shield]: https://img.shields.io/github/stars/ccr5/hyperledger-private-blockchain.svg?style=for-the-badge
[stars-url]: https://github.com/ccr5/hyperledger-private-blockchain/stargazers
[issues-shield]: https://img.shields.io/github/issues/ccr5/hyperledger-private-blockchain.svg?style=for-the-badge
[issues-url]: https://github.com/ccr5/hyperledger-private-blockchain/issues
[license-shield]: https://img.shields.io/github/license/ccr5/hyperledger-private-blockchain.svg?style=for-the-badge
[license-url]: https://github.com/ccr5/hyperledger-private-blockchain/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/mattnobre
[product-screenshot]: img/logo.jpeg
