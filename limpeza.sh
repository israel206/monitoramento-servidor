#!/bin/bash

#limpiza de arquivos inuteis

echo "Limpando a Lixeira"
#user variavel que diz que vai pega o usuario do sistema
sudo rm -rf /home/$USER/.local/share/Trash/files/*
#pulando duas linhas
echo ""
echo ""
#pasta temporaria do sistema
echo "Limpando a pasta TMP"
sudo rm -rf /var/tmp/*
echo ""
echo ""
# exclusao de caches inúteis
echo "Eclusão de cache inúteis do sistema. Cópias de atualizações do gerenciador de atual."
#vai apagar sem pergunta y signif. sim
sudo apt-get clean -y
echo ""
echo ""
#eclusão de pacotes que não estão sendo utilizados
echo "Exclusão de programas que não estão sendo mais utilizados pelo sistema"
sudo apt-get autoremove -y
echo ""
echo ""
echo "Exclusão de arquivos duplicados"
sudo apt-get autoclean -y
echo ""
echo ""
# consertar pacotes quebrados de durante imprevistos no download do mesmo,  reparos
echo "Reparos de pacotes quebrados durante a atualização"
sudo dpkg --configure -a
echo ""
echo ""
clear
echo "Limpeza Cocluida"
# contador de terminal, 4 segundos e logo em sguinda saíra do terminal
sleep 4
exit

 
