#!/bin/bash
# GET /users/repositorios
Git_usuario=Carlos1445678
curl -s "https://api.github.com/users/$Git_usuario/repos"
curl -s "https://api.github.com/repos/Carlos1445678/Segunda-Practica"
curl -s "https://api.github.com/repos/Carlos1445678/Mi-practica-1"
curl -s "https://api.github.com/repos/Carlos1445678/Practica-2LPC"
curl -s "https://api.github.com/orgs/txt/repos"