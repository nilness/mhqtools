FasdUAS 1.101.10   ��   ��    k             l     ��  ��    = 7 This is the master machq script to replace all others!     � 	 	 n   T h i s   i s   t h e   m a s t e r   m a c h q   s c r i p t   t o   r e p l a c e   a l l   o t h e r s !   
  
 l     ��  ��    ) # First find out the version of OS X     �   F   F i r s t   f i n d   o u t   t h e   v e r s i o n   o f   O S   X      l     ��������  ��  ��        p         ������ 0 	osversion 	osVersion��        p         ������ 0 
externalip 
externalIP��        p         ������  0 swupdateserver SWUpdateServer��        p         ������ 	0 store  ��        p         ������ 0 resources_directory  ��       !   l     ��������  ��  ��   !  " # " l     $���� $ r      % & % I    �� '��
�� .sysoexecTEXT���     TEXT ' m      ( ( � ) ) � / u s r / b i n / s w _ v e r s   - p r o d u c t V e r s i o n   |   / u s r / b i n / a w k   - F   .   ' { p r i n t   $ 2 } '��   & o      ���� 0 	osversion 	osVersion��  ��   #  * + * l     ��������  ��  ��   +  , - , l   � .���� . Q    � / 0 1 / k    d 2 2  3 4 3 r     5 6 5 I   �� 7��
�� .sysoexecTEXT���     TEXT 7 m     8 8 � 9 9 F / u s r / b i n / c u r l   h t t p : / / i c a n h a z i p . c o m /��   6 o      ���� 0 
externalip 
externalIP 4  : ; : l   ��������  ��  ��   ;  < = < r     > ? > I   �� @��
�� .sysoexecTEXT���     TEXT @ m     A A � B B B / u s r / b i n / d i g   + s h o r t   0 0 1 . m a c h q . c o m��   ? o      ���� 	0 test1   =  C D C r    " E F E I    �� G��
�� .sysoexecTEXT���     TEXT G m     H H � I I B / u s r / b i n / d i g   + s h o r t   0 0 2 . m a c h q . c o m��   F o      ���� 	0 test2   D  J K J r   # * L M L I  # (�� N��
�� .sysoexecTEXT���     TEXT N m   # $ O O � P P B / u s r / b i n / d i g   + s h o r t   0 0 3 . m a c h q . c o m��   M o      ���� 	0 test3   K  Q R Q l  + +��������  ��  ��   R  S T S l  + +��������  ��  ��   T  U V U l  + +��������  ��  ��   V  W X W Z   + b Y Z [�� Y =  + . \ ] \ o   + ,���� 0 
externalip 
externalIP ] o   , -���� 	0 test1   Z k   1 8 ^ ^  _ ` _ r   1 4 a b a m   1 2 c c � d d  0 0 1 b o      ���� 	0 store   `  e�� e r   5 8 f g f m   5 6 h h � i i . m h q - s w u p d a t e . l o c a l : 8 0 8 8 g o      ����  0 swupdateserver SWUpdateServer��   [  j k j =  ; > l m l o   ; <���� 0 
externalip 
externalIP m o   < =���� 	0 test2   k  n o n k   A J p p  q r q r   A D s t s m   A B u u � v v  0 0 2 t o      ���� 	0 store   r  w�� w r   E J x y x m   E H z z � { { " x s e r v e . l o c a l : 8 0 8 8 y o      ����  0 swupdateserver SWUpdateServer��   o  | } | =  M P ~  ~ o   M N���� 0 
externalip 
externalIP  o   N O���� 	0 test3   }  ��� � k   S ^ � �  � � � r   S X � � � m   S V � � � � �  0 0 3 � o      ���� 	0 store   �  ��� � r   Y ^ � � � m   Y \ � � � � � ( s e r v e r c d r . l o c a l : 8 0 8 8 � o      ����  0 swupdateserver SWUpdateServer��  ��  ��   X  ��� � l  c c��������  ��  ��  ��   0 R      ������
�� .ascrerr ****      � ****��  ��   1 k   l � � �  � � � l  l l�� � ���   � / )can't determine which store automatically    � � � � R c a n ' t   d e t e r m i n e   w h i c h   s t o r e   a u t o m a t i c a l l y �  � � � r   l { � � � J   l w � �  � � � m   l o � � � � �  S t .   L o u i s �  � � � m   o r � � � � �  O ' F a l l o n �  ��� � m   r u � � � � �  C e d a r   R a p i d s��   � o      ���� 0 thestorelist theStoreList �  � � � r   | � � � � I  | ��� � �
�� .gtqpchltns    @   @ ns   � o   | ���� 0 thestorelist theStoreList � �� � �
�� 
appr � m   � � � � � � � 
 H e l p ! � �� ���
�� 
prmp � m   � � � � � � �  W h e r e   a r e   w e ?��   � o      ���� 0 thestore theStore �  � � � l  � ���������  ��  ��   �  � � � Z   � � � � ��� � =  � � � � � c   � � � � � o   � ����� 0 thestore theStore � m   � ���
�� 
TEXT � m   � � � � � � �  S t .   L o u i s � r   � � � � � m   � � � � � � � . m h q - s w u p d a t e . l o c a l : 8 0 8 8 � o      ����  0 swupdateserver SWUpdateServer �  � � � =  � � � � � c   � � � � � o   � ����� 0 thestore theStore � m   � ���
�� 
TEXT � m   � � � � � � �  O ' F a l l o n �  � � � r   � � � � � m   � � � � � � � " x s e r v e . l o c a l : 8 0 8 8 � o      ����  0 swupdateserver SWUpdateServer �  � � � =  � � � � � c   � � � � � o   � ����� 0 thestore theStore � m   � ���
�� 
TEXT � m   � � � � � � �  C e d a r   R a p i d s �  ��� � r   � � � � � m   � � � � � � � ( s e r v e r c d r . l o c a l : 8 0 8 8 � o      ����  0 swupdateserver SWUpdateServer��  ��   �  ��� � l  � ���������  ��  ��  ��  ��  ��   -  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � - 'check for updates to the updater script    � � � � N c h e c k   f o r   u p d a t e s   t o   t h e   u p d a t e r   s c r i p t �  � � � l  �� ����� � Q   �� � ��� � k   �� � �  � � � O   � � � � k   � � �  � � � r   � � � � � l  � � ����� � c   � � � � � n   � � � � � m   � ���
�� 
ctnr � l  � � ����� � I  � ��� ���
�� .earsffdralis        afdr �  f   � ���  ��  ��   � m   � ���
�� 
ctxt��  ��   � o      ���� 0 scripts_directory   �  ��� � r   � � � � l  � ����� � c   � �  � n   � m   ��
�� 
ctnr n   �  m   � ��
�� 
ctnr l  � ����� I  � ����
�� .earsffdralis        afdr  f   � ��  ��  ��    m  �~
�~ 
ctxt��  ��   � o      �}�} 0 resources_directory  ��   � m   � ��                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��   � 	 l �|�{�z�|  �{  �z  	 

 r   l �y�x n   1  �w
�w 
psxp l �v�u b   o  �t�t 0 resources_directory   m   �  u p d a t e r . v e r s i o n�v  �u  �y  �x   o      �s�s 0 
local_file    r  1 I -�r�q
�r .sysoexecTEXT���     TEXT b  ) b  % m  ! �    / b i n / c a t   " o  !$�p�p 0 
local_file   m  %(!! �""  "�q   o      �o�o 0 local_version   #$# l 22�n�m�l�n  �m  �l  $ %&% r  2='(' I 29�k)�j
�k .sysoexecTEXT���     TEXT) m  25** �++ � / u s r / b i n / c u r l   h t t p s : / / r a w . g i t h u b u s e r c o n t e n t . c o m / n i l n e s s / m h q t o o l s / m a s t e r / u p d a t e r . v e r s i o n�j  ( o      �i�i 0 current_version  & ,-, l >>�h./�h  . q kdisplay dialog "Local version of updater is: " & local_version & ", current version is: " & current_version   / �00 � d i s p l a y   d i a l o g   " L o c a l   v e r s i o n   o f   u p d a t e r   i s :   "   &   l o c a l _ v e r s i o n   &   " ,   c u r r e n t   v e r s i o n   i s :   "   &   c u r r e n t _ v e r s i o n- 121 l >>�g�f�e�g  �f  �e  2 3�d3 Z  >�45�c�b4 ?  >E676 o  >A�a�a 0 current_version  7 o  AD�`�` 0 local_version  5 k  H�88 9:9 l HH�_�^�]�_  �^  �]  : ;<; l HH�\=>�\  =  download the new version   > �?? 0 d o w n l o a d   t h e   n e w   v e r s i o n< @A@ r  HWBCB l HSD�[�ZD n  HSEFE 1  OS�Y
�Y 
psxpF l HOG�X�WG b  HOHIH o  HK�V�V 0 scripts_directory  I m  KNJJ �KK & u p d a t e r . a p p l e s c r i p t�X  �W  �[  �Z  C o      �U�U 0 
local_file  A LML I Xg�TN�S
�T .sysoexecTEXT���     TEXTN b  XcOPO b  X_QRQ m  X[SS �TT � / u s r / b i n / c u r l   h t t p s : / / r a w . g i t h u b u s e r c o n t e n t . c o m / n i l n e s s / m h q t o o l s / m a s t e r / u p d a t e r . a p p l e s c r i p t   >   "R o  [^�R�R 0 
local_file  P m  _bUU �VV  "�S  M WXW l hh�QYZ�Q  Y % update the local version string   Z �[[ > u p d a t e   t h e   l o c a l   v e r s i o n   s t r i n gX \]\ r  hw^_^ l hs`�P�O` n  hsaba 1  os�N
�N 
psxpb l hoc�M�Lc b  hoded o  hk�K�K 0 resources_directory  e m  knff �gg  u p d a t e r . v e r s i o n�M  �L  �P  �O  _ o      �J�J 0 
local_file  ] hih I x��Ij�H
�I .sysoexecTEXT���     TEXTj b  x�klk b  xmnm m  x{oo �pp � / u s r / b i n / c u r l   h t t p s : / / r a w . g i t h u b u s e r c o n t e n t . c o m / n i l n e s s / m h q t o o l s / m a s t e r / u p d a t e r . v e r s i o n   >   "n o  {~�G�G 0 
local_file  l m  �qq �rr  "�H  i s�Fs l ���E�D�C�E  �D  �C  �F  �c  �b  �d   � R      �B�A�@
�B .ascrerr ****      � ****�A  �@  ��  ��  ��   � tut l     �?�>�=�?  �>  �=  u vwv l ��x�<�;x O  ��yzy r  ��{|{ l ��}�:�9} c  ��~~ n  ����� m  ���8
�8 
ctnr� n  ����� m  ���7
�7 
ctnr� l ����6�5� I ���4��3
�4 .earsffdralis        afdr�  f  ���3  �6  �5   m  ���2
�2 
ctxt�:  �9  | o      �1�1 0 resources_directory  z m  �����                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��  �<  �;  w ��� l     �0�/�.�0  �/  �.  � ��� l     �-�,�+�-  �,  �+  � ��� l     �*���*  � - 'display dialog osVersion buttons {"OK"}   � ��� N d i s p l a y   d i a l o g   o s V e r s i o n   b u t t o n s   { " O K " }� ��� l     �)�(�'�)  �(  �'  � ��� l     �&���&  � 2 ,display dialog SWUpdateServer buttons {"OK"}   � ��� X d i s p l a y   d i a l o g   S W U p d a t e S e r v e r   b u t t o n s   { " O K " }� ��� l     �%�$�#�%  �$  �#  � ��� l     �"�!� �"  �!  �   � ��� l ������ r  ����� J  ���� ��� m  ���� ��� > S e t   U s e d   P r e f s   ( a l l   * ' e d   i t e m s )� ��� m  ���� ��� & S e t   S W U p d a t e S e r v e r *� ��� m  ���� ��� & L i s t   S W U p d a t e S e r v e r� ��� m  ���� ��� * R e m o v e   S W U p d a t e S e r v e r� ��� m  ���� ��� & S e t   M a c H Q   h o m e p a g e *� ��� m  ���� ���  D i s a b l e   S l e e p *� ��� m  ���� ��� $ R e n a m e   H D   b y   S i z e *� ��� m  ���� ��� 0 I n s t a l l   M H Q   R e s e t   S c r i p t� ��� m  ���� ��� > R e m o v e   C u r r e n t   U s e r   &   R e s e t   C P U� ��� m  ���� ��� 2 T e s t   f o r   F l a s h b a c k   T r o j a n� ��� m  ���� ��� B T e s t   f o r   S h e l l S h o c k   v u l n e r a b i l i t y� ��� m  ���� ��� 4 R e b u i l d   L a u n c h   S e r v i c e s   D B� ��� m  ���� ���  F l u s h   D N S   C a c h e� ��� m  ���� ��� , R e s e t   F a k e   p r e f e r e n c e s� ��� m  ���� ��� B U p d a t e   F a k e   W o r k f l o w s   f r o m   S e r v e r� ��� m  ���� ��� 8 I n s t a l l   S W U p d a t e   S t a r t u p I t e m� ��� m  ���� ��� J S a v e   S y s t e m   P r o f i l e r   R e p o r t   t o   s e r v e r�  � o      ��  0 thebuttonnames theButtonNames�  �  � ��� l     ����  �  �  � ��� l ������ T  ���� k  ���� ��� r  � ��� I �����
� .gtqpchltns    @   @ ns  � o  ����  0 thebuttonnames theButtonNames�  � o      �� 0 	thechoice 	theChoice� ��� Z  ������ = ��� o  �� 0 	thechoice 	theChoice� m  �
� boovfals�  S  	
� ��� = ��� c  ��� o  �� 0 	thechoice 	theChoice� m  �
� 
TEXT� m  �� ��� & S e t   S W U p d a t e S e r v e r *�    I   ���� &0 setswupdateserver setSWUpdateServer�  �    = #. c  #* o  #&�� 0 	thechoice 	theChoice m  &)�

�
 
TEXT m  *- �		 & L i s t   S W U p d a t e S e r v e r 

 I  16�	���	 (0 listswupdateserver listSWUpdateServer�  �    = 9D c  9@ o  9<�� 0 	thechoice 	theChoice m  <?�
� 
TEXT m  @C � * R e m o v e   S W U p d a t e S e r v e r  I  GL���� *0 resetswupdateserver resetSWUpdateServer�  �    = OZ c  OV o  OR�� 0 	thechoice 	theChoice m  RU� 
�  
TEXT m  VY � & S e t   M a c H Q   h o m e p a g e *  I  ]b�������� 0 sethomepage setHomePage��  ��    !  = ep"#" c  el$%$ o  eh���� 0 	thechoice 	theChoice% m  hk��
�� 
TEXT# m  lo&& �'' > S e t   U s e d   P r e f s   ( a l l   * ' e d   i t e m s )! ()( I  sx�������� 0 setusedprefs setUsedPrefs��  ��  ) *+* = {�,-, c  {�./. o  {~���� 0 	thechoice 	theChoice/ m  ~���
�� 
TEXT- m  ��00 �11  D i s a b l e   S l e e p *+ 232 I  ���������� 0 disablesleep disableSleep��  ��  3 454 = ��676 c  ��898 o  ������ 0 	thechoice 	theChoice9 m  ����
�� 
TEXT7 m  ��:: �;; $ R e n a m e   H D   b y   S i z e *5 <=< I  ����������  0 renamehdbysize renameHDbySize��  ��  = >?> = ��@A@ c  ��BCB o  ������ 0 	thechoice 	theChoiceC m  ����
�� 
TEXTA m  ��DD �EE 0 I n s t a l l   M H Q   R e s e t   S c r i p t? FGF I  ���������� (0 installresetscript installResetScript��  ��  G HIH = ��JKJ c  ��LML o  ������ 0 	thechoice 	theChoiceM m  ����
�� 
TEXTK m  ��NN �OO 6 R e m o v e   M H Q   U s e r   &   R e s e t   C P UI PQP Z  ��RS����R =  ��TUT I  ���������� 0 resetusercpu resetUserCPU��  ��  U m  ��������S L  ������  ��  ��  Q VWV = ��XYX c  ��Z[Z o  ������ 0 	thechoice 	theChoice[ m  ����
�� 
TEXTY m  ��\\ �]] > R e m o v e   C u r r e n t   U s e r   &   R e s e t   C P UW ^_^ Z  � `a����` =  ��bcb I  ���������� $0 resetthisusercpu resetThisUserCPU��  ��  c m  ��������a L  ������  ��  ��  _ ded = fgf c  
hih o  ���� 0 	thechoice 	theChoicei m  	��
�� 
TEXTg m  
jj �kk 2 T e s t   f o r   F l a s h b a c k   T r o j a ne lml I  �������� 00 testforflashbacktrojan testForFlashbackTrojan��  ��  m non = $pqp c   rsr o  ���� 0 	thechoice 	theChoices m  ��
�� 
TEXTq m   #tt �uu 4 R e b u i l d   L a u n c h   S e r v i c e s   D Bo vwv I  ',�������� 20 rebuildlaunchservicesdb rebuildLaunchServicesDB��  ��  w xyx = /:z{z c  /6|}| o  /2���� 0 	thechoice 	theChoice} m  25��
�� 
TEXT{ m  69~~ � , R e s e t   F a k e   p r e f e r e n c e sy ��� I  =B�������� B0 reinstalldefaultfakepreferences reinstallDefaultFakePreferences��  ��  � ��� = EP��� c  EL��� o  EH���� 0 	thechoice 	theChoice� m  HK��
�� 
TEXT� m  LO�� ��� 0 R e i n s t a l l   F a k e   W o r k f l o w s� ��� I  SX�������� 00 reinstallfakeworkflows reinstallFakeWorkflows��  ��  � ��� = [f��� c  [b��� o  [^���� 0 	thechoice 	theChoice� m  ^a��
�� 
TEXT� m  be�� ��� 8 I n s t a l l   S W U p d a t e   S t a r t u p I t e m� ��� I  in�������� ,0 installswupdateplist InstallSWUpdatePlist��  ��  � ��� = q|��� c  qx��� o  qt���� 0 	thechoice 	theChoice� m  tw��
�� 
TEXT� m  x{�� ���  F l u s h   D N S   C a c h e� ��� I  ��������� 0 flushdnscache FlushDNSCache��  ��  � ��� = ����� c  ����� o  ������ 0 	thechoice 	theChoice� m  ����
�� 
TEXT� m  ���� ��� J S a v e   S y s t e m   P r o f i l e r   R e p o r t   t o   s e r v e r� ��� I  ���������� ,0 systemprofilerreport SystemProfilerReport��  ��  � ��� = ����� c  ����� o  ������ 0 	thechoice 	theChoice� m  ����
�� 
TEXT� m  ���� ��� B U p d a t e   F a k e   W o r k f l o w s   f r o m   S e r v e r� ��� I  ���������� 60 updateworkflowsfromserver UpdateWorkflowsFromServer��  ��  � ��� = ����� c  ����� o  ������ 0 	thechoice 	theChoice� m  ����
�� 
TEXT� m  ���� ��� B T e s t   f o r   S h e l l S h o c k   v u l n e r a b i l i t y� ���� I  ���������� @0 testforshellshockvulnerability testForShellShockVulnerability��  ��  ��  � O ����� I ��������
�� .aevtquitnull��� ��� null��  ��  �  f  ��� ���� l ����������  ��  ��  ��  �  �  � ��� l     ��������  ��  ��  � ��� i     ��� I      �������� 0 setusedprefs setUsedPrefs��  ��  � k     �� ��� I     �������� 0 disablesleep disableSleep��  ��  � ��� I    �������� &0 setswupdateserver setSWUpdateServer��  ��  � ��� I    �������� 0 sethomepage setHomePage��  ��  � ���� I    ��������  0 renamehdbysize renameHDbySize��  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      �������� 0 sethomepage setHomePage��  ��  � k     ��� ��� r     ��� b     ��� l    	������ I    	����
�� .earsffdralis        afdr� m     ��
�� afdrdlib� ����
�� 
from� m    ��
�� fldmfldu� �����
�� 
rtyp� m    ��
�� 
ctxt��  ��  ��  � m   	 
�� ��� D P r e f e r e n c e s : c o m . a p p l e . S a f a r i . p l i s t� o      �� 0 
filetarget 
fileTarget� ��� l   �~�}�|�~  �}  �|  � ��� Q    &���� k    �� ��� l   �{���{  � N H we don't really need the alias; we're just checking to see if it exists   � ��� �   w e   d o n ' t   r e a l l y   n e e d   t h e   a l i a s ;   w e ' r e   j u s t   c h e c k i n g   t o   s e e   i f   i t   e x i s t s� ��z� c    ��� o    �y�y 0 
filetarget 
fileTarget� m    �x
�x 
alis�z  � R      �w�v�u
�w .ascrerr ****      � ****�v  �u  � O    &��� I    %�t�s�r
�t .miscactvnull��� ��� null�s  �r  � m    ���                                                                                  sfri  alis    J  ultraviolet                ΗesH+  �.�
Safari.app                                                     �QE�3        ����  	                Applications    Η��      �y�    �.�  $ultraviolet:Applications: Safari.app   
 S a f a r i . a p p    u l t r a v i o l e t  Applications/Safari.app   / ��  � ��� Z   ' V���q�p� n   ' +��� 1   ( *�o
�o 
prun� m   ' (���                                                                                  sfri  alis    J  ultraviolet                ΗesH+  �.�
Safari.app                                                     �QE�3        ����  	                Applications    Η��      �y�    �.�  $ultraviolet:Applications: Safari.app   
 S a f a r i . a p p    u l t r a v i o l e t  Applications/Safari.app   / ��  � k   . R�� ��� O   . 8   I  2 7�n�m�l
�n .aevtquitnull��� ��� null�m  �l   m   . /�                                                                                  sfri  alis    J  ultraviolet                ΗesH+  �.�
Safari.app                                                     �QE�3        ����  	                Applications    Η��      �y�    �.�  $ultraviolet:Applications: Safari.app   
 S a f a r i . a p p    u l t r a v i o l e t  Applications/Safari.app   / ��  �  V   9 L I  B G�k�j
�k .sysodelanull��� ��� nmbr m   B C�i�i �j   l  = A�h�g n   = A	
	 1   > @�f
�f 
prun
 m   = >�                                                                                  sfri  alis    J  ultraviolet                ΗesH+  �.�
Safari.app                                                     �QE�3        ����  	                Applications    Η��      �y�    �.�  $ultraviolet:Applications: Safari.app   
 S a f a r i . a p p    u l t r a v i o l e t  Applications/Safari.app   / ��  �h  �g   �e I  M R�d�c
�d .sysodelanull��� ��� nmbr m   M N�b�b �c  �e  �q  �p  �  I  W ^�a�`
�a .sysoexecTEXT���     TEXT m   W Z � � d e f a u l t s   w r i t e   c o m . a p p l e . S a f a r i   H o m e P a g e   h t t p : / / t w i t t e r . c o m / m a c h q ;   d e f a u l t s   w r i t e   c o m . a p p l e . S a f a r i   N e w W i n d o w B e h a v i o r   0�`    I  _ d�_�^
�_ .sysodelanull��� ��� nmbr m   _ `�]�] �^   �\ O   e � k   i �  I  i n�[�Z�Y
�[ .miscactvnull��� ��� null�Z  �Y    I  o t�X�W
�X .sysodelanull��� ��� nmbr m   o p�V�V �W     I  u ~�U!�T
�U .coreclosnull���    obj ! 2   u z�S
�S 
cwin�T    "�R" I   ��Q�P�O
�Q .aevtquitnull��� ��� null�P  �O  �R   m   e f##�                                                                                  sfri  alis    J  ultraviolet                ΗesH+  �.�
Safari.app                                                     �QE�3        ����  	                Applications    Η��      �y�    �.�  $ultraviolet:Applications: Safari.app   
 S a f a r i . a p p    u l t r a v i o l e t  Applications/Safari.app   / ��  �\  � $%$ l     �N�M�L�N  �M  �L  % &'& i    ()( I      �K�J�I�K (0 listswupdateserver listSWUpdateServer�J  �I  ) Q     '*+,* k    -- ./. r    
010 I   �H2�G
�H .sysoexecTEXT���     TEXT2 m    33 �44 � d e f a u l t s   r e a d   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S o f t w a r e U p d a t e   C a t a l o g U R L�G  1 o      �F�F 0 server_name  / 5�E5 I   �D67
�D .sysodlogaskr        TEXT6 b    898 m    :: �;; * S W   u p d a t e   s e r v e r   i s :  9 o    �C�C 0 server_name  7 �B<�A
�B 
btns< J    == >�@> m    ?? �@@  O K�@  �A  �E  + R      �?�>�=
�? .ascrerr ****      � ****�>  �=  , I   '�<AB
�< .sysodlogaskr        TEXTA m    CC �DD H U s i n g   d e f a u l t   A p p l e   S W   U p d a t e   S e r v e rB �;E�:
�; 
btnsE J     #FF G�9G m     !HH �II  O K�9  �:  ' JKJ l     �8�7�6�8  �7  �6  K LML i    NON I      �5�4�3�5 *0 resetswupdateserver resetSWUpdateServer�4  �3  O Q     %PQ�2P k    RR STS l   �1UV�1  U < 6if running in 10.7 or later we need to supply password   V �WW l i f   r u n n i n g   i n   1 0 . 7   o r   l a t e r   w e   n e e d   t o   s u p p l y   p a s s w o r dT XYX l   �0�/�.�0  �/  �.  Y Z[Z Z    \]�-^\ l   _�,�+_ ?    `a` c    bcb o    �*�* 0 	osversion 	osVersionc m    �)
�) 
nmbra m    �(�( �,  �+  ] I   �'de
�' .sysoexecTEXT���     TEXTd m    ff �gg � d e f a u l t s   d e l e t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S o f t w a r e U p d a t e   C a t a l o g U R Le �&h�%
�& 
badmh m    �$
�$ boovtrue�%  �-  ^ I   �#i�"
�# .sysoexecTEXT���     TEXTi m    jj �kk � / u s r / b i n / d e f a u l t s   d e l e t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S o f t w a r e U p d a t e   C a t a l o g U R L�"  [ lml l   �!� ��!  �   �  m n�n l   �op�  o ` Zdo shell script "defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL"   p �qq � d o   s h e l l   s c r i p t   " d e f a u l t s   d e l e t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S o f t w a r e U p d a t e   C a t a l o g U R L "�  Q R      ���
� .ascrerr ****      � ****�  �  �2  M rsr l     ����  �  �  s tut i    vwv I      ���� 0 disablesleep disableSleep�  �  w Q     xy�x I   
�z{
� .sysoexecTEXT���     TEXTz m    || �}} V p m s e t   - c   d i s p l a y s l e e p   0   s l e e p   0   d i s k s l e e p   0{ �~�
� 
badm~ m    �
� boovtrue�  y R      ���
� .ascrerr ****      � ****�  �  �  u � l     ��
�	�  �
  �	  � ��� i    ��� I      ����  0 renamehdbysize renameHDbySize�  �  � k     �� ��� r     ��� m     �� ���@ 
 
 # ! / b i n / b a s h 
 
 b o o t _ v o l = ` b l e s s   - - g e t B o o t ` 
 
 b o o t _ d i s k = ` d i s k u t i l   i n f o   $ { b o o t _ v o l }   | s e d   ' / ^   * V o l u m e   N a m e :   * / ! d ; s # # # ' ` 
 
 d i s k _ s i z e = ` s y s t e m _ p r o f i l e r   S P S e r i a l A T A D a t a T y p e   | s e d   ' / ^   * C a p a c i t y :   * / ! d ; s # # # '   |   a w k   ' { p r i n t   i n t ( $ 1 + 0 . 5 )     $ 2 "   H D " } '   |   h e a d   - n   1   ` 
 
 d i s k u t i l   r e n a m e   " $ { b o o t _ d i s k } "   " $ { d i s k _ s i z e } " 
 
 #   S h o w   i c o n s   f o r   h a r d   d r i v e s ,   s e r v e r s ,   a n d   r e m o v a b l e   m e d i a   o n   t h e   d e s k t o p 
 # d e f a u l t s   w r i t e   c o m . a p p l e . f i n d e r   S h o w E x t e r n a l H a r d D r i v e s O n D e s k t o p   - b o o l   t r u e 
 d e f a u l t s   w r i t e   c o m . a p p l e . f i n d e r   S h o w H a r d D r i v e s O n D e s k t o p   - b o o l   t r u e 
 # d e f a u l t s   w r i t e   c o m . a p p l e . f i n d e r   S h o w M o u n t e d S e r v e r s O n D e s k t o p   - b o o l   t r u e 
 # d e f a u l t s   w r i t e   c o m . a p p l e . f i n d e r   S h o w R e m o v a b l e M e d i a O n D e s k t o p   - b o o l   t r u e 
 
 k i l l a l l   F i n d e r 
 	 
� o      �� 0 thesetscript theSetScript� ��� I   	���
� .sysoexecTEXT���     TEXT� o    �� 0 thesetscript theSetScript�  � ��� l  
 
� �����   ��  ��  �  � ��� l     ��������  ��  ��  � ��� i    ��� I      �������� &0 setswupdateserver setSWUpdateServer��  ��  � k     +�� ��� l     ��������  ��  ��  � ��� r     ��� b     ��� b     ��� m     �� ��� 8 
 
 # ! / b i n / b a s h 
 
 U R L 1 = ' h t t p : / /� o    ����  0 swupdateserver SWUpdateServer� m    �� ���� ' 
         c a s e   ` / u s r / b i n / s w _ v e r s   - p r o d u c t V e r s i o n   |   / u s r / b i n / a w k   - F   .   ' { p r i n t   $ 2 } ' `   i n 
             4 )   U R L = " $ { U R L 1 } / i n d e x . s u c a t a l o g "   ; ;       
             5 )   U R L = " $ { U R L 1 } / i n d e x - l e o p a r d . m e r g e d - 1 . s u c a t a l o g "   ; ;             
             6 )   U R L = " $ { U R L 1 } / i n d e x - l e o p a r d - s n o w l e o p a r d . m e r g e d - 1 . s u c a t a l o g "   ; ;         
 	 7 )   U R L = " $ { U R L 1 } / i n d e x - l i o n - s n o w l e o p a r d - l e o p a r d . m e r g e d - 1 . s u c a t a l o g "   ; ; 
 	 8 )   U R L = " $ { U R L 1 } / i n d e x - m o u n t a i n l i o n - l i o n - s n o w l e o p a r d - l e o p a r d . m e r g e d - 1 . s u c a t a l o g "   ; ; 
 	 9 )   U R L = " $ { U R L 1 } / i n d e x - 1 0 . 9 - m o u n t a i n l i o n - l i o n - s n o w l e o p a r d - l e o p a r d . m e r g e d - 1 . s u c a t a l o g "   ; ; 
 	 1 0 )   U R L = " $ { U R L 1 } / i n d e x - 1 0 . 1 0 - 1 0 . 9 - m o u n t a i n l i o n - l i o n - s n o w l e o p a r d - l e o p a r d . m e r g e d - 1 . s u c a t a l o g "   ; ; 
             * )   e c h o   " U n s u p p o r t e d   c l i e n t   O S " ;   e x i t   1   ; ; 
         e s a c 
 
 / u s r / b i n / d e f a u l t s   w r i t e   / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . S o f t w a r e U p d a t e   C a t a l o g U R L   " $ { U R L } " 
 	 
 	� o      ���� 0 thesetscript theSetScript� ��� l   ������  � ; 5if running in 10.7 or 10.8 we need to supply password   � ��� j i f   r u n n i n g   i n   1 0 . 7   o r   1 0 . 8   w e   n e e d   t o   s u p p l y   p a s s w o r d� ���� Q    +����� Z    "������ l   ������ ?    ��� c    ��� o    ���� 0 	osversion 	osVersion� m    ��
�� 
nmbr� m    ���� ��  ��  � I   ����
�� .sysoexecTEXT���     TEXT� o    ���� 0 thesetscript theSetScript� �����
�� 
badm� m    ��
�� boovtrue��  ��  � I   "�����
�� .sysoexecTEXT���     TEXT� o    ���� 0 thesetscript theSetScript��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      �������� (0 installresetscript installResetScript��  ��  � Q     (���� O    ��� k    �� ��� r    ��� c    ��� l   
������ b    
��� o    ���� 0 resources_directory  � m    	�� ���  m h q r e s e t . s h��  ��  � m   
 ��
�� 
alis� o      ���� 0 thefile TheFile� ���� I   ����
�� .coreclon****      � ****� o    ���� 0 thefile TheFile� ����
�� 
insh� l   ������ 1    ��
�� 
sdsk��  ��  � �����
�� 
alrp� m    ��
�� boovtrue��  ��  � m    ���                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 error_message  ��  � I  # (�����
�� .sysodlogaskr        TEXT� o   # $���� 0 error_message  ��  � ��� l     ��������  ��  ��  � ��� i     #��� I      �������� 0 resetusercpu resetUserCPU��  ��  � Q     Z����� k    Q�� ��� I   ����
�� .sysodlogaskr        TEXT� m    �� ���0 T h i s   w i l l   i n s t a l l   t h e   M H Q   r e s e t   s c r i p t   a n d   r e s t a r t   t h e   c o m p u t e r   i n t o   s i n g l e   u s e r   m o d e ,   t h e n   r u n   t h e   r e s e t   s c r i p t   a u t o m a t i c a l l y .   D o   y o u   w i s h   t o   c o n t i n u e ?� ����
�� 
btns� J    	�� ��� m    �� ���  Q u i t� ���� m    �� ���  C o n t i n u e��  � ����
�� 
dflt� m   
 �� ���  C o n t i n u e� �����
�� 
cbtn� m    �� ���  Q u i t��  � ��� I    �������� (0 installresetscript installResetScript��  ��  � ��� l   ��������  ��  ��  � ��� Z    ' ��  =    o    ���� 0 	osversion 	osVersion m     �  1 0 r    ! m    		 �

  . b a s h r c o      ���� 0 target_file  ��   r   $ ' m   $ % �  . p r o f i l e o      ���� 0 target_file  �  l  ( (��������  ��  ��    I  ( 3��
�� .sysoexecTEXT���     TEXT b   ( + m   ( ) � X e c h o   " s h   / m h q r e s e t . s h "   > >   / p r i v a t e / v a r / r o o t / o   ) *���� 0 target_file   ����
�� 
badm m   . /��
�� boovtrue��    l  4 4��������  ��  ��    I  4 ?��
�� .sysoexecTEXT���     TEXT m   4 7   �!! ( n v r a m   b o o t - a r g s = " - s " ��"��
�� 
badm" m   : ;��
�� boovtrue��   #$# l  @ @��������  ��  ��  $ %&% O  @ L'(' I  F K������
�� .fndrrestnull��� ��� null��  ��  ( m   @ C))�                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��  & *��* L   M Q++ m   M P��������  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ,-, l     ��������  ��  ��  - ./. i   $ '010 I      �������� $0 resetthisusercpu resetThisUserCPU��  ��  1 Q     �23��2 k    �44 565 O    787 r    9:9 e    ;; l   <����< n    =>= 1   
 ��
�� 
pnam> 1    
��
�� 
curu��  ��  : o      ���� 0 current_user  8 m    ??�                                                                                  sevs  alis    �  ultraviolet                ΗesH+  �.ySystem Events.app                                              �H��4�M        ����  	                CoreServices    Η��      �5"�    �.y�.m�.l  <ultraviolet:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    u l t r a v i o l e t  -System/Library/CoreServices/System Events.app   / ��  6 @A@ l   ��������  ��  ��  A BCB I   #��DE
�� .sysodlogaskr        TEXTD b    FGF b    HIH m    JJ �KK T h i s   w i l l   i n s t a l l   t h e   M H Q   r e s e t   s c r i p t   a n d   r e s t a r t   t h e   c o m p u t e r   i n t o   s i n g l e   u s e r   m o d e ,   t h e n   r u n   t h e   r e s e t   s c r i p t   a u t o m a t i c a l l y .   T h e   u s e r   "I o    ���� 0 current_user  G m    LL �MM ~ "   w i l l   b e   d e l e t e d   w i t h   a l l   i t ' s   f i l e s .   D o   y o u   w i s h   t o   c o n t i n u e ?E ��NO
�� 
btnsN J    PP QRQ m    SS �TT  Q u i tR U��U m    VV �WW  C o n t i n u e��  O �XY
� 
dfltX m    ZZ �[[  C o n t i n u eY �~\�}
�~ 
cbtn\ m    ]] �^^  Q u i t�}  C _`_ I  $ >�|ab
�| .sysodlogaskr        TEXTa b   $ )cdc b   $ 'efe m   $ %gg �hh N A r e   y o u   a b s o l u t e l y   c e r t a i n ? .   T h e   u s e r   "f o   % &�{�{ 0 current_user  d m   ' (ii �jj ~ "   w i l l   b e   d e l e t e d   w i t h   a l l   i t ' s   f i l e s .   D o   y o u   w i s h   t o   c o n t i n u e ?b �zkl
�z 
btnsk J   * 2mm non m   * -pp �qq  Q u i to r�yr m   - 0ss �tt  C o n t i n u e�y  l �xuv
�x 
dfltu m   3 6ww �xx  C o n t i n u ev �wy�v
�w 
cbtny m   7 :zz �{{  Q u i t�v  ` |}| I   ? D�u�t�s�u (0 installresetscript installResetScript�t  �s  } ~~ l  E E�r�q�p�r  �q  �p   ��� Z   E \���o�� =  E L��� o   E H�n�n 0 	osversion 	osVersion� m   H K�� ���  1 0� r   O T��� m   O R�� ���  . b a s h r c� o      �m�m 0 target_file  �o  � r   W \��� m   W Z�� ���  . p r o f i l e� o      �l�l 0 target_file  � ��� l  ] ]�k�j�i�k  �j  �i  � ��� I  ] p�h��
�h .sysoexecTEXT���     TEXT� b   ] h��� b   ] f��� b   ] b��� m   ] `�� ��� . e c h o   " s h   / m h q r e s e t . s h "  � o   ` a�g�g 0 current_user  � m   b e�� ��� ,   > >   / p r i v a t e / v a r / r o o t /� o   f g�f�f 0 target_file  � �e��d
�e 
badm� m   k l�c
�c boovtrue�d  � ��� l  q q�b�a�`�b  �a  �`  � ��� I  q |�_��
�_ .sysoexecTEXT���     TEXT� m   q t�� ��� ( n v r a m   b o o t - a r g s = " - s "� �^��]
�^ 
badm� m   w x�\
�\ boovtrue�]  � ��� l  } }�[�Z�Y�[  �Z  �Y  � ��� O  } ���� I  � ��X�W�V
�X .fndrrestnull��� ��� null�W  �V  � m   } ����                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��  � ��U� L   � ��� m   � ��T�T���U  3 R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  ��  / ��� l     �P�O�N�P  �O  �N  � ��� i   ( +��� I      �M�L�K�M ,0 installswupdateplist InstallSWUpdatePlist�L  �K  � k     R�� ��� l     �J�I�H�J  �I  �H  � ��� r     ��� c     ��� l    ��G�F� b     ��� o     �E�E 0 resources_directory  � m    �� ��� & S e t   S W U p d a t e   S e r v e r�G  �F  � m    �D
�D 
alis� o      �C�C 0 thefile TheFile� ��� l   �B�A�@�B  �A  �@  � ��� Z    D���?�� l   ��>�=� ?    ��� c    ��� o    	�<�< 0 	osversion 	osVersion� m   	 
�;
�; 
nmbr� m    �:�: �>  �=  � k    &�� ��� l   �9�8�7�9  �8  �7  � ��6� O    &��� I   %�5��
�5 .coreclon****      � ****� o    �4�4 0 thefile TheFile� �3��
�3 
insh� l   ��2�1� I   �0��
�0 .earsffdralis        afdr� m    �/
�/ afdrempz� �.��
�. 
from� m    �-
�- fldmfldl� �,��+
�, 
rtyp� m    �*
�* 
alis�+  �2  �1  � �)��(
�) 
alrp� m     !�'
�' boovtrue�(  � m    ���                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��  �6  �?  � k   ) D�� ��� l  ) )�&�%�$�&  �%  �$  � ��� r   ) 8��� b   ) 6��� b   ) 2��� m   ) ,�� ���8 
 	 	 
 	 	 # ! / b i n / b a s h 
 
 	 	 i f   [   !   - e   ' / L i b r a r y / S t a r t u p I t e m s / S e t   S W U p d a t e   S e r v e r '   ] ;   t h e n   
 	 	         m k d i r   ' / L i b r a r y / S t a r t u p I t e m s / S e t   S W U p d a t e   S e r v e r '   
 	 	 f i   
 	 	 c p   - R   '� l  , 1��#�"� l  , 1��!� � n   , 1��� 1   - 1�
� 
psxp� o   , -�� 0 thefile TheFile�!  �   �#  �"  � m   2 5�� ��� f '   ' / L i b r a r y / S t a r t u p I t e m s / S e t   S W U p d a t e   S e r v e r / . '   
 	 	� o      �� 0 	thescript 	theScript� ��� I  9 B���
� .sysoexecTEXT���     TEXT� o   9 :�� 0 	thescript 	theScript� ���
� 
badm� m   = >�
� boovtrue�  � ��� l  C C����  �  �  �  � � � l  E E����  �  �     I  E P�
� .sysoexecTEXT���     TEXT m   E H � � c h m o d   - R   7 5 5   ' / L i b r a r y / S t a r t u p I t e m s / S e t   S W U p d a t e   S e r v e r ' ;   s u d o   c h o w n   - R   r o o t : w h e e l   ' / L i b r a r y / S t a r t u p I t e m s / S e t   S W U p d a t e   S e r v e r ' ��
� 
badm m   K L�
� boovtrue�   � l  Q Q��
�	�  �
  �	  �  � 	
	 l     ����  �  �  
  l     ����  �  �    i   , / I      ��� � 00 testforflashbacktrojan testForFlashbackTrojan�  �    k     e  I    ��
�� .sysodisAaleR        TEXT l    ���� m      �  B e g i n n i n g   t e s t��  ��   ����
�� 
mesS m     � � T e s t i n g   f o r   p r e s e n c e   o f   F l a s h b a c k   t r o j a n .   K e e p   i n   m i n d   t h i s   i s   N O T   a   d e f i n i t i v e   t e s t !��    l   ��������  ��  ��    Q    5 !"  k    ## $%$ r    &'& I   ��(��
�� .sysoexecTEXT���     TEXT( m    )) �** � d e f a u l t s   r e a d   / A p p l i c a t i o n s / S a f a r i . a p p / C o n t e n t s / I n f o   L S E n v i r o n m e n t��  ' o      ���� 
0 check1  % +,+ I   ��-.
�� .sysodisAaleR        TEXT- l   /����/ m    00 �11 & P o s s i b l e   i n f e c t i o n !��  ��  . ��2��
�� 
mesS2 m    33 �44 R e c o m m e n d   r u n n i n g   f u l l   a n t i v i r u s   s c a n   w i t h   u p   t o   d a t e   s c a n n e r .   P l e a s e   n o t e   t h i s   t e s t   i s   a   f i r s t   r e l e a s e   a n d   m a y   p r o d u c e   f a l s e   p o s i t i v e s .��  , 5��5 l   ��������  ��  ��  ��  ! R      ��67
�� .ascrerr ****      � ****6 o      ���� 0 error_message  7 ��8��
�� 
errn8 o      ���� 0 error_number  ��  " Z   $ 59:����9 =  $ ';<; o   $ %���� 0 error_number  < m   % &���� : I  * 1��=>
�� .sysodisAaleR        TEXT= l  * +?����? m   * +@@ �AA  A l e r t !��  ��  > ��B��
�� 
mesSB m   , -CC �DD 0 F i r s t   c h e c k   a p p e a r s   o k a y��  ��  ��   EFE l  6 6��������  ��  ��  F G��G Q   6 eHIJH k   9 JKK LML r   9 @NON I  9 >��P��
�� .sysoexecTEXT���     TEXTP m   9 :QQ �RR r d e f a u l t s   r e a d   ~ / . M a c O S X / e n v i r o n m e n t   D Y L D _ I N S E R T _ L I B R A R I E S��  O o      ���� 
0 check2  M STS I  A H��UV
�� .sysodisAaleR        TEXTU l  A BW����W m   A BXX �YY & P o s s i b l e   i n f e c t i o n !��  ��  V ��Z��
�� 
mesSZ m   C D[[ �\\ R e c o m m e n d   r u n n i n g   f u l l   a n t i v i r u s   s c a n   w i t h   u p   t o   d a t e   s c a n n e r .   P l e a s e   n o t e   t h i s   t e s t   i s   a   f i r s t   r e l e a s e   a n d   m a y   p r o d u c e   f a l s e   p o s i t i v e s .��  T ]��] l  I I��������  ��  ��  ��  I R      ��^_
�� .ascrerr ****      � ****^ o      ���� 0 error_message  _ ��`��
�� 
errn` o      ���� 0 error_number  ��  J Z   R eab����a =  R Ucdc o   R S���� 0 error_number  d m   S T���� b I  X a��ef
�� .sysodisAaleR        TEXTe l  X Yg����g m   X Yhh �ii  A l e r t !��  ��  f ��j��
�� 
mesSj m   Z ]kk �ll 2 S e c o n d   c h e c k   a p p e a r s   o k a y��  ��  ��  ��   mnm l     ��������  ��  ��  n opo l     ��������  ��  ��  p qrq i   0 3sts I      �������� 20 rebuildlaunchservicesdb rebuildLaunchServicesDB��  ��  t k     1uu vwv I    ��xy
�� .sysodisAaleR        TEXTx l    z����z m     {{ �||  A l e r t !��  ��  y ��}��
�� 
mesS} m    ~~ � p T h e   F i n d e r   m u s t   b e   q u i t   a n d   w i l l   r e l a u n c h   w h e n   c o m p l e t e .��  w ��� l   ��������  ��  ��  � ���� Q    1����� k    (�� ��� O   ��� I   ������
�� .aevtquitnull��� ��� null��  ��  � m    ���                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��  � ��� I   �����
�� .sysoexecTEXT���     TEXT� m    �� ���6 / S y s t e m / L i b r a r y / F r a m e w o r k s / C o r e S e r v i c e s . f r a m e w o r k / F r a m e w o r k s / L a u n c h S e r v i c e s . f r a m e w o r k / S u p p o r t / l s r e g i s t e r   - k i l l   - r   - d o m a i n   l o c a l   - d o m a i n   s y s t e m   - d o m a i n   u s e r��  � ��� O   &��� I    %������
�� .miscactvnull��� ��� null��  ��  � m    ���                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��  � ���� l  ' '��������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  r ��� l     ��������  ��  ��  � ��� i   4 7��� I      �������� B0 reinstalldefaultfakepreferences reinstallDefaultFakePreferences��  ��  � k     %�� ��� l     ��������  ��  ��  � ��� l     ������  � ( "delete the current preference file   � ��� D d e l e t e   t h e   c u r r e n t   p r e f e r e n c e   f i l e� ��� l     ��������  ��  ��  � ��� O     ��� k    �� ��� r    ��� b    ��� l   ������ I   ����
�� .earsffdralis        afdr� m    ��
�� afdmpref� �����
�� 
rtyp� m    ��
�� 
TEXT��  ��  ��  � m    �� ��� , c o m . f a k e a p p . F a k e . p l i s t� o      ���� 0 oldfile oldFile� ���� I   �����
�� .coredeloobj        obj � 4    ���
�� 
file� o    ���� 0 oldfile oldFile��  ��  � m     ���                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��  � ��� l   ��������  ��  ��  � ��� l   ����~��  �  �~  � ��� l   �}���}  � F @ create new preference file and set the properties we care about   � ��� �   c r e a t e   n e w   p r e f e r e n c e   f i l e   a n d   s e t   t h e   p r o p e r t i e s   w e   c a r e   a b o u t� ��� r    ��� m    �� ���� 
 # ! / b i n / b a s h 
 
 t o u c h   " ~ / P r e f e r e n c e s / c o m . f a k e a p p . F a k e . p l i s t " 
 d e f a u l t s   w r i t e   c o m . f a k e a p p . F a k e   " F a k e D e l a y B e t w e e n R u n n i n g A c t i o n s "   ' 0 ' 
 d e f a u l t s   w r i t e   c o m . f a k e a p p . F a k e   " F a k e P l a y S u c c e s s F a i l u r e S o u n d s "   ' 0 ' 
� o      �|�| 0 thesetscript theSetScript� ��� I   #�{��z
�{ .sysoexecTEXT���     TEXT� o    �y�y 0 thesetscript theSetScript�z  � ��� l  $ $�x�w�v�x  �w  �v  � ��u� l  $ $�t�s�r�t  �s  �r  �u  � ��� l     �q�p�o�q  �p  �o  � ��� l     �n�m�l�n  �m  �l  � ��� i   8 ;��� I      �k�j�i�k 00 reinstallfakeworkflows reinstallFakeWorkflows�j  �i  � k     D�� ��� r     ��� b     ��� l    	��h�g� I    	�f��
�f .earsffdralis        afdr� m     �e
�e afdrasup� �d��
�d 
from� m    �c
�c fldmfldu� �b��a
�b 
rtyp� m    �`
�` 
ctxt�a  �h  �g  � m   	 
�� ���  F a k e : W o r k f l o w s :� o      �_�_ 0 	oldfolder 	oldFolder� ��� r    ��� b    ��� l   ��^�]� I   �\��
�\ .earsffdralis        afdr� m    �[
�[ afdrasup� �Z��
�Z 
from� m    �Y
�Y fldmfldu� �X��W
�X 
rtyp� m    �V
�V 
ctxt�W  �^  �]  � m    �� ��� 
 F a k e :� o      �U�U 0 
fakefolder 
fakeFolder� ��� r    #��� c    !��� l   ��T�S� b    ��� o    �R�R 0 resources_directory  � m    �� ���  W o r k f l o w s�T  �S  � m     �Q
�Q 
alis� o      �P�P 0 	newfolder 	newFolder�    l  $ $�O�O   . (	display dialog oldFolder buttons {"OK"}    � P 	 d i s p l a y   d i a l o g   o l d F o l d e r   b u t t o n s   { " O K " } �N O   $ D k   ( C 	
	 Q   ( 9�M I  + 0�L�K
�L .coredeloobj        obj  o   + ,�J�J 0 	oldfolder 	oldFolder�K   R      �I�H�G
�I .ascrerr ****      � ****�H  �G  �M  
 �F I  : C�E
�E .coreclon****      � **** o   : ;�D�D 0 	newfolder 	newFolder �C�B
�C 
insh o   > ?�A�A 0 
fakefolder 
fakeFolder�B  �F   m   $ %�                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��  �N  �  l     �@�?�>�@  �?  �>    l     �=�<�;�=  �<  �;    i   < ? I      �:�9�8�: 0 flushdnscache FlushDNSCache�9  �8   k       r      m        �!!( 
 
 # ! / b i n / b a s h 
 
 c a s e   ` / u s r / b i n / s w _ v e r s   - p r o d u c t V e r s i o n   |   / u s r / b i n / a w k   - F   .   ' { p r i n t   $ 2 } ' `   i n 
         4 )   l o o k u p d   - f l u s h c a c h e   ; ;       
       [ 5 6 ] )   d s c a c h e u t i l   - f l u s h c a c h e   ; ;             
         [ 7 8 ] )   s u d o   k i l l a l l   - H U P   m D N S R e s p o n d e r   ; ; 
         9 )   d s c a c h e u t i l   - f l u s h c a c h e ;   s u d o   k i l l a l l   - H U P   m D N S R e s p o n d e r   ; ; 
     1 0 )   d s c a c h e u t i l   - f l u s h c a c h e ;   s u d o   d i s c o v e r y u t i l   m d n s f l u s h c a c h e   ; ; 
             * )   e c h o   " U n s u p p o r t e d   c l i e n t   O S " ;   e x i t   1   ; ; 
 e s a c 
 
 	 
 	 o      �7�7 0 thesetscript theSetScript "#" l   �6$%�6  $ ; 5if running in 10.7 or 10.8 we need to supply password   % �&& j i f   r u n n i n g   i n   1 0 . 7   o r   1 0 . 8   w e   n e e d   t o   s u p p l y   p a s s w o r d# '(' l   �5�4�3�5  �4  �3  ( )�2) Z    *+�1,* l   	-�0�/- ?    	./. c    010 o    �.�. 0 	osversion 	osVersion1 m    �-
�- 
nmbr/ m    �,�, �0  �/  + I   �+23
�+ .sysoexecTEXT���     TEXT2 o    �*�* 0 thesetscript theSetScript3 �)4�(
�) 
badm4 m    �'
�' boovtrue�(  �1  , I   �&5�%
�& .sysoexecTEXT���     TEXT5 o    �$�$ 0 thesetscript theSetScript�%  �2   676 l     �#�"�!�#  �"  �!  7 898 i   @ C:;: I      � ���  ,0 systemprofilerreport SystemProfilerReport�  �  ; k     h<< =>= l     ����  �  �  > ?@? Z     1ABC�A l    D��D =     EFE o     �� 	0 store  F m    GG �HH  0 0 1�  �  B k    II JKJ r    	LML m    NN �OO ^ / V o l u m e s / M H Q / B a c k e d   U p / S y s t e m   P r o f i l e r   R e p o r t s /M o      �� 0 destination  K P�P r   
 QRQ m   
 SS �TT 8 a f p : / / m h q - s w u p d a t e . l o c a l / M H QR o      �� 0 dest_volume  �  C UVU l   W��W =    XYX o    �� 	0 store  Y m    ZZ �[[  0 0 2�  �  V \]\ k    ^^ _`_ r    aba m    cc �dd R / V o l u m e s / S e r v i c e / S y s t e m   P r o f i l e r   R e p o r t s /b o      �� 0 destination  ` e�e r    fgf m    hh �ii 4 a f p : / / x s e r v e . l o c a l / S e r v i c eg o      �� 0 dest_volume  �  ] jkj l    #l��l =     #mnm o     !�� 	0 store  n m   ! "oo �pp  0 0 3�  �  k q�
q k   & -rr sts r   & )uvu m   & 'ww �xx R / V o l u m e s / S e r v i c e / S y s t e m   P r o f i l e r   R e p o r t s /v o      �	�	 0 destination  t y�y r   * -z{z m   * +|| �}} : a f p : / / s e r v e r c d r . l o c a l / S e r v i c e{ o      �� 0 dest_volume  �  �
  �  @ ~~ l  2 2����  �  �   ��� l  2 2����  �  	display dialog oldFolder   � ��� 2 	 d i s p l a y   d i a l o g   o l d F o l d e r� ��� l  2 2��� �  �  �   � ��� O   2 X��� Q   6 W���� I  9 >�����
�� .aevtmvolnull���     TEXT� o   9 :���� 0 dest_volume  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   F W�� ��� L   F L�� b   F K��� b   F I��� m   F G�� ��� < E r r o r   m o u n t i n g   s e r v e r   v o l u m e   "� o   G H���� 0 dest_volume  � m   I J�� ��� f " .   P l e a s e   c o n n e c t   t o   s e r v e r   m a n u a l l y   a n d   t r y   a g a i n .� ���� O  M W��� I  Q V������
�� .aevtquitnull��� ��� null��  ��  �  f   M N��  � m   2 3���                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��  � ��� l  Y Y��������  ��  ��  � ��� l  Y Y������  � X Rthis shell script will generate a system profiler report and save it to the server   � ��� � t h i s   s h e l l   s c r i p t   w i l l   g e n e r a t e   a   s y s t e m   p r o f i l e r   r e p o r t   a n d   s a v e   i t   t o   t h e   s e r v e r� ��� I  Y f�����
�� .sysoexecTEXT���     TEXT� b   Y b��� b   Y ^��� m   Y \�� ��� � # ! / b i n / s h 
 
 #   t h e   l o c a t i o n   i n c l u d e s   a   f o l d e r   b a s e d   o n   t h e   d a t e   i n   y y y y - m m - d d   f o r m a t 
 r e p o r t _ l o c a t i o n = "� o   \ ]���� 0 destination  � m   ^ a�� ���� ` d a t e   " + % Y - % m - % d " ` / " 
 
 i f   [   !   - d   " $ { r e p o r t _ l o c a t i o n } "   ] ;   t h e n 
 	 m k d i r   " $ { r e p o r t _ l o c a t i o n } " 
 f i 
 
 s e r i a l = ` s y s t e m _ p r o f i l e r   S P H a r d w a r e D a t a T y p e   |   g r e p   " S e r i a l   N u m b e r "   |   a w k     ' { p r i n t   $ 4 } ' ` 
 
 S P D a t a T y p e s = " S P H a r d w a r e D a t a T y p e   S P M e m o r y D a t a T y p e   S P P o w e r D a t a T y p e   S P S e r i a l A T A D a t a T y p e   S P S o f t w a r e D a t a T y p e   S P T h u n d e r b o l t D a t a T y p e   S P U S B D a t a T y p e   S P A i r P o r t D a t a T y p e   S P F i r e W i r e D a t a T y p e   S P P a r a l l e l A T A D a t a T y p e   S P A u d i o D a t a T y p e   S P B l u e t o o t h D a t a T y p e   S P N e t w o r k D a t a T y p e " 
 
 s y s t e m _ p r o f i l e r   - x m l   $ S P D a t a T y p e s   >   $ r e p o r t _ l o c a t i o n $ s e r i a l " . s p x " 
��  � ���� l  g g��������  ��  ��  ��  9 ��� l     ��������  ��  ��  � ��� i   D G��� I      �������� 60 updateworkflowsfromserver UpdateWorkflowsFromServer��  ��  � k     ��� ��� l     ��������  ��  ��  � ��� r     ��� n     ��� 1    ��
�� 
psxp� l    ������ b     ��� l    	������ I    	����
�� .earsffdralis        afdr� m     ��
�� afdrasup� ����
�� 
from� m    ��
�� fldmfldu� �����
�� 
rtyp� m    ��
�� 
ctxt��  ��  ��  � m   	 
�� ���  F a k e : W o r k f l o w s :��  ��  � o      ���� 0 destination  � ��� l   ��������  ��  ��  � ��� Z    G������ l   ������ =    ��� o    ���� 	0 store  � m    �� ���  0 0 1��  ��  � k    �� ��� r    ��� m    �� ��� l / V o l u m e s / M H Q / B a c k e d   U p / R e t a i l   S t u f f / C u r r e n t   W o r k f l o w s /� o      ���� 
0 source  � ���� r    ��� m    �� ��� 8 a f p : / / m h q - s w u p d a t e . l o c a l / M H Q� o      ���� 0 dest_volume  ��  � ��� l    #������ =     #��� o     !���� 	0 store  � m   ! "�� ���  0 0 2��  ��  � ��� k   & -�� ��� r   & )��� m   & '�� ��� D / V o l u m e s / R e t a i l / C u r r e n t   W o r k f l o w s /� o      ���� 
0 source  � ���� r   * -��� m   * +�� ��� 2 a f p : / / x s e r v e . l o c a l / R e t a i l� o      ���� 0 dest_volume  ��  � ��� l  0 5������ =   0 5��� o   0 1���� 	0 store  � m   1 4�� ���  0 0 3��  ��  �  ��  k   8 C  r   8 = m   8 ; � D / V o l u m e s / R e t a i l / C u r r e n t   W o r k f l o w s / o      ���� 
0 source   �� r   > C	
	 m   > A � 8 a f p : / / s e r v e r c d r . l o c a l / R e t a i l
 o      ���� 0 dest_volume  ��  ��  ��  �  l  H H��������  ��  ��    l  H H����   . (	display dialog oldFolder buttons {"OK"}    � P 	 d i s p l a y   d i a l o g   o l d F o l d e r   b u t t o n s   { " O K " }  l  H H��������  ��  ��    O   H t Q   N s I  Q V����
�� .aevtmvolnull���     TEXT o   Q R���� 0 dest_volume  ��   R      ������
�� .ascrerr ****      � ****��  ��   k   ^ s   L   ^ h!! b   ^ g"#" b   ^ c$%$ m   ^ a&& �'' < E r r o r   m o u n t i n g   s e r v e r   v o l u m e   "% o   a b���� 0 dest_volume  # m   c f(( �)) f " .   P l e a s e   c o n n e c t   t o   s e r v e r   m a n u a l l y   a n d   t r y   a g a i n .  *��* O  i s+,+ I  m r������
�� .aevtquitnull��� ��� null��  ��  ,  f   i j��   m   H K--�                                                                                  MACS  alis    r  ultraviolet                ΗesH+  �.y
Finder.app                                                     ���B�<        ����  	                CoreServices    Η��      �B�    �.y�.m�.l  5ultraviolet:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    u l t r a v i o l e t  &System/Library/CoreServices/Finder.app  / ��   ./. l  u u��������  ��  ��  / 010 Q   u �2342 k   x �55 676 l  x �89:8 r   x �;<; b   x �=>= b   x �?@? b   x �ABA b   x }CDC m   x {EE �FF H 
 	 # ! / b i n / b a s h 
 	 
 	 / u s r / b i n / r s y n c   - a   'D o   { |���� 
0 source  B m   } �GG �HH  '   '@ o   � ����� 0 destination  > m   � �II �JJ  ' 
 	< o      ���� 0 	thescript 	theScript9  shell script	   : �KK  s h e l l   s c r i p t 	7 LML l  � ���������  ��  ��  M N��N l  � �OPQO I  � ���R��
�� .sysoexecTEXT���     TEXTR o   � ����� 0 	thescript 	theScript��  P # with administrator privileges   Q �SS : w i t h   a d m i n i s t r a t o r   p r i v i l e g e s��  3 R      ������
�� .ascrerr ****      � ****��  ��  4 L   � �TT m   � �UU �VV 6 E r r o r   s y n c r o n i z i n g   f o l d e r s .1 W��W l  � ���������  ��  ��  ��  � XYX l     ��������  ��  ��  Y Z[Z i   H K\]\ I      �������� @0 testforshellshockvulnerability testForShellShockVulnerability��  ��  ] k     �^^ _`_ l     ��������  ��  ��  ` aba r     cdc m     ee �ffL 
 # ! / b i n / b a s h 
 
 E X P L O I T _ 1 = ` e n v   x = ' ( )   {   : ; } ;   e c h o   v u l n e r a b l e '   b a s h   - c   " e c h o   t h i s   i s   a   t e s t " ` 
 i f   [   " $ { E X P L O I T _ 1 } "   =   " v u l n e r a b l e "   ] ;   t h e n 
         e c h o   " T e s t   1   ( C V E - 2 0 1 4 - 6 2 7 1 ) : 	 * * * *   M a c h i n e   a p p e a r s   t o   b e   v u l n e r a b l e   * * * * " 
 e l s e 
         e c h o   " T e s t   1   ( C V E - 2 0 1 4 - 6 2 7 1 ) : 	 M a c h i n e   d o e s n ' t   a p p e a r   t o   b e   v u l n e r a b l e " 
 f i 
d o      ���� 
0 test_1  b ghg r    iji m    kk �ll\ 
 # ! / b i n / b a s h 
 
 E X P L O I T _ 2 = ` e n v   X = ' ( )   {   ( s h e l l s h o c k e r . n e t ) = > \ '   b a s h   - c   " e c h o   d a t e " ;   c a t   e c h o ;   r m   . / e c h o   ` 
 i f   [   " $ { E X P L O I T _ 2 } "   ! =   " d a t e "   ] ;   t h e n 
         e c h o   " T e s t   2   ( C V E - 2 0 1 4 - 7 1 6 9 ) : 	 * * * *   M a c h i n e   a p p e a r s   t o   b e   v u l n e r a b l e   * * * * " 
 e l s e 
         e c h o   " T e s t   2   ( C V E - 2 0 1 4 - 7 1 6 9 ) : 	 M a c h i n e   d o e s n ' t   a p p e a r   t o   b e   v u l n e r a b l e " 
 f i 
j o      ���� 
0 test_2  h mnm r    opo m    	qq �rr� 
 # ! / b i n / b a s h 
 
 E X P L O I T _ 3 = ` e n v   X = '   ( )   {   } ;   e c h o   h e l l o '   b a s h   - c   ' d a t e ' ` 
 i f   [   " $ { E X P L O I T _ 3 } "   =   " h e l l o "   ] ;   t h e n 
         e c h o   " T e s t   3   ( C V E - ? ? ) : 	 * * * *   M a c h i n e   a p p e a r s   t o   b e   v u l n e r a b l e   * * * * " 
 e l s e 
         e c h o   " T e s t   3   ( C V E - ? ? ) : 	 M a c h i n e   d o e s n ' t   a p p e a r   t o   b e   v u l n e r a b l e " 
 f i 
 
p o      ���� 
0 test_3  n sts l   ��������  ��  ��  t uvu r    wxw m    yy �zz* 
 # ! / b i n / b a s h 
 
 E X P L O I T _ 4 = ` b a s h   - c   ' t r u e   < < E O F   < < E O F   < < E O F   < < E O F   < < E O F   < < E O F   < < E O F   < < E O F   < < E O F   < < E O F   < < E O F   < < E O F   < < E O F   < < E O F '   | |   e c h o   " C V E - 2 0 1 4 - 7 1 8 6   v u l n e r a b l e ,   r e d i r _ s t a c k " ` 
 i f   [   " $ { E X P L O I T _ 4 } "   =   " C V E - 2 0 1 4 - 7 1 8 6   v u l n e r a b l e ,   r e d i r _ s t a c k "   ] ;   t h e n 
         e c h o   " T e s t   4   ( C V E - 2 0 1 4 - 7 1 8 6 ) : 	 * * * *   M a c h i n e   a p p e a r s   t o   b e   v u l n e r a b l e   * * * * " 
 e l s e 
         e c h o   " T e s t   4   ( C V E - 2 0 1 4 - 7 1 8 6 ) : 	 M a c h i n e   d o e s n ' t   a p p e a r   t o   b e   v u l n e r a b l e " 
 f i 
 
x o      ���� 
0 test_4  v {|{ l   ��������  ��  ��  | }~} r    � m    �� ���4 
 # ! / b i n / b a s h 
 
 E X P L O I T _ 5 = ` ( f o r   x   i n   { 1 . . 2 0 0 }   ;   d o   e c h o   " f o r   x $ x   i n   ;   d o   : " ;   d o n e ;   f o r   x   i n   { 1 . . 2 0 0 }   ;   d o   e c h o   d o n e   ;   d o n e )   |   b a s h   | |   e c h o   " C V E - 2 0 1 4 - 7 1 8 7   v u l n e r a b l e ,   w o r d _ l i n e n o " ` 
 i f   [   " $ { E X P L O I T _ 5 } "   =   " C V E - 2 0 1 4 - 7 1 8 7   v u l n e r a b l e ,   w o r d _ l i n e n o "   ] ;   t h e n 
         e c h o   " T e s t   5   ( C V E - 2 0 1 4 - 7 1 8 7 ) : 	 * * * *   M a c h i n e   a p p e a r s   t o   b e   v u l n e r a b l e   * * * * " 
 e l s e 
         e c h o   " T e s t   5   ( C V E - 2 0 1 4 - 7 1 8 7 ) : 	 M a c h i n e   d o e s n ' t   a p p e a r   t o   b e   v u l n e r a b l e " 
 f i 
 
� o      ���� 
0 test_5  ~ ��� r    ��� m    �� ���f 
 # ! / b i n / b a s h 
 
 E X P L O I T _ 6 = ` s h e l l s h o c k e r = ' ( )   {   e c h o   Y o u   a r e   v u l n e r a b l e ;   } '   b a s h   - c   s h e l l s h o c k e r ` 
 i f   [   " $ { E X P L O I T _ 6 } "   =   " Y o u   a r e   v u l n e r a b l e "   ] ;   t h e n 
         e c h o   " T e s t   6   ( C V E - 2 0 1 4 - 6 2 7 8 ) : 	 * * * *   M a c h i n e   a p p e a r s   t o   b e   v u l n e r a b l e   * * * * " 
 e l s e 
         e c h o   " T e s t   6   ( C V E - 2 0 1 4 - 6 2 7 8 ) : 	 M a c h i n e   d o e s n ' t   a p p e a r   t o   b e   v u l n e r a b l e " 
 f i 
 
� o      ���� 
0 test_6  � ��� r    ��� m    �� ���d 
 # ! / b i n / b a s h 
 
 E X P L O I T _ 7 = ` b a s h   - c   " f ( )   {   x ( )   {   _ ; } ;   x ( )   {   _ ; }   < < a ;   } "   2 > / d e v / n u l l   | |   e c h o   v u l n e r a b l e ` 
 i f   [   " $ { E X P L O I T _ 7 } "   =   " v u l n e r a b l e "   ] ;   t h e n 
         e c h o   " T e s t   7   ( C V E - 2 0 1 4 - 6 2 7 7 ) : 	 * * * *   M a c h i n e   a p p e a r s   t o   b e   v u l n e r a b l e   * * * * " 
 e l s e 
         e c h o   " T e s t   7   ( C V E - 2 0 1 4 - 6 2 7 7 ) : 	 M a c h i n e   d o e s n ' t   a p p e a r   t o   b e   v u l n e r a b l e " 
 f i 
 
� o      ���� 
0 test_7  � ��� l   ����~��  �  �~  � ��� l   �}�|�{�}  �|  �{  � ��� r    #��� I   !�z��y
�z .sysoexecTEXT���     TEXT� o    �x�x 
0 test_1  �y  � o      �w�w 0 result_1  � ��� r   $ +��� I  $ )�v��u
�v .sysoexecTEXT���     TEXT� o   $ %�t�t 
0 test_2  �u  � o      �s�s 0 result_2  � ��� r   , 3��� I  , 1�r��q
�r .sysoexecTEXT���     TEXT� o   , -�p�p 
0 test_3  �q  � o      �o�o 0 result_3  � ��� r   4 ;��� I  4 9�n��m
�n .sysoexecTEXT���     TEXT� o   4 5�l�l 
0 test_4  �m  � o      �k�k 0 result_4  � ��� r   < C��� I  < A�j��i
�j .sysoexecTEXT���     TEXT� o   < =�h�h 
0 test_5  �i  � o      �g�g 0 result_5  � ��� r   D K��� I  D I�f��e
�f .sysoexecTEXT���     TEXT� o   D E�d�d 
0 test_6  �e  � o      �c�c 0 result_6  � ��� r   L S��� I  L Q�b��a
�b .sysoexecTEXT���     TEXT� o   L M�`�` 
0 test_7  �a  � o      �_�_ 0 result_7  � ��� l  T T�^�]�\�^  �]  �\  � ��[� Q   T ����Z� I  W z�Y��
�Y .sysodlogaskr        TEXT� b   W r��� b   W p��� b   W n��� b   W l��� b   W j��� b   W h��� b   W f��� b   W d��� b   W b��� b   W `��� b   W ^��� b   W \��� b   W Z��� o   W X�X�X 0 result_1  � o   X Y�W
�W 
ret � o   Z [�V�V 0 result_2  � o   \ ]�U
�U 
ret � o   ^ _�T�T 0 result_3  � o   ` a�S
�S 
ret � o   b c�R�R 0 result_4  � o   d e�Q
�Q 
ret � o   f g�P�P 0 result_6  � o   h i�O
�O 
ret � o   j k�N�N 0 result_6  � o   l m�M
�M 
ret � o   n o�L�L 0 result_7  � o   p q�K
�K 
ret � �J��I
�J 
btns� J   s v�� ��H� m   s t�� ���  O K�H  �I  � R      �G�F�E
�G .ascrerr ****      � ****�F  �E  �Z  �[  [ ��D� l     �C�B�A�C  �B  �A  �D       �@����������������������@  � �?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�? 0 setusedprefs setUsedPrefs�> 0 sethomepage setHomePage�= (0 listswupdateserver listSWUpdateServer�< *0 resetswupdateserver resetSWUpdateServer�; 0 disablesleep disableSleep�:  0 renamehdbysize renameHDbySize�9 &0 setswupdateserver setSWUpdateServer�8 (0 installresetscript installResetScript�7 0 resetusercpu resetUserCPU�6 $0 resetthisusercpu resetThisUserCPU�5 ,0 installswupdateplist InstallSWUpdatePlist�4 00 testforflashbacktrojan testForFlashbackTrojan�3 20 rebuildlaunchservicesdb rebuildLaunchServicesDB�2 B0 reinstalldefaultfakepreferences reinstallDefaultFakePreferences�1 00 reinstallfakeworkflows reinstallFakeWorkflows�0 0 flushdnscache FlushDNSCache�/ ,0 systemprofilerreport SystemProfilerReport�. 60 updateworkflowsfromserver UpdateWorkflowsFromServer�- @0 testforshellshockvulnerability testForShellShockVulnerability
�, .aevtoappnull  �   � ****� �+��*�)���(�+ 0 setusedprefs setUsedPrefs�*  �)  �  � �'�&�%�$�' 0 disablesleep disableSleep�& &0 setswupdateserver setSWUpdateServer�% 0 sethomepage setHomePage�$  0 renamehdbysize renameHDbySize�( *j+  O*j+ O*j+ O*j+ � �#��"�!��� �# 0 sethomepage setHomePage�"  �!  � �� 0 
filetarget 
fileTarget� �������������������
� afdrdlib
� 
from
� fldmfldu
� 
rtyp
� 
ctxt� 
� .earsffdralis        afdr
� 
alis�  �  
� .miscactvnull��� ��� null
� 
prun
� .aevtquitnull��� ��� null
� .sysodelanull��� ��� nmbr
� .sysoexecTEXT���     TEXT
� 
cwin
� .coreclosnull���    obj �  ������� �%E�O ��&W X 	 
� *j UO��,E )� *j UO h��,Ekj [OY��Olj Y hOa j Olj O� *j Olj O*a -j O*j U� �)�����
� (0 listswupdateserver listSWUpdateServer�  �  � �	�	 0 server_name  � 
3�:�?���CH
� .sysoexecTEXT���     TEXT
� 
btns
� .sysodlogaskr        TEXT�  �  �
 ( �j E�O�%��kvl W X  ���kvl � �O����� � *0 resetswupdateserver resetSWUpdateServer�  �  �  � 	������f����j������ 0 	osversion 	osVersion
�� 
nmbr�� 
�� 
badm
�� .sysoexecTEXT���     TEXT��  ��  �  & ��&� ��el Y �j OPW X  h� ��w���������� 0 disablesleep disableSleep��  ��  �  � |��������
�� 
badm
�� .sysoexecTEXT���     TEXT��  ��  ��  ��el W X  h� �������������  0 renamehdbysize renameHDbySize��  ��  � ���� 0 thesetscript theSetScript� ���
�� .sysoexecTEXT���     TEXT�� �E�O�j OP� ������������� &0 setswupdateserver setSWUpdateServer��  ��  � ���� 0 thesetscript theSetScript� 
��������������������  0 swupdateserver SWUpdateServer�� 0 	osversion 	osVersion
�� 
nmbr�� 
�� 
badm
�� .sysoexecTEXT���     TEXT��  ��  �� ,��%�%E�O ��&� ��el Y �j W X  	h� ������� ���� (0 installresetscript installResetScript��  ��    ������ 0 thefile TheFile�� 0 error_message   ������������������������ 0 resources_directory  
�� 
alis
�� 
insh
�� 
sdsk
�� 
alrp�� 
�� .coreclon****      � ****�� 0 error_message  ��  
�� .sysodlogaskr        TEXT�� ) � ��%�&E�O��*�,�e� UW X 	 
�j � ����������� 0 resetusercpu resetUserCPU��  ��   ���� 0 target_file   �������������������	���� )��������
�� 
btns
�� 
dflt
�� 
cbtn�� 
�� .sysodlogaskr        TEXT�� (0 installresetscript installResetScript�� 0 	osversion 	osVersion
�� 
badm
�� .sysoexecTEXT���     TEXT
�� .fndrrestnull��� ��� null������  ��  �� [ S����lv����� 	O*j+ 
O��  �E�Y �E�O�%a el Oa a el Oa  *j UOa W X  h� ��1�������� $0 resetthisusercpu resetThisUserCPU��  ��   ������ 0 current_user  �� 0 target_file   #?����JL��SV��Z��]����gipswz�����������������������
�� 
curu
�� 
pnam
�� 
btns
�� 
dflt
�� 
cbtn�� 
�� .sysodlogaskr        TEXT�� (0 installresetscript installResetScript�� 0 	osversion 	osVersion
�� 
badm
�� .sysoexecTEXT���     TEXT
�� .fndrrestnull��� ��� null������  ��  �� � �� 
*�,�,EE�UO�%�%���lv����� O�%�%�a a lv�a �a � O*j+ O_ a   
a E�Y a E�Oa �%a %�%a el Oa a el Oa  *j UOa  W X ! "h� ����������� ,0 installswupdateplist InstallSWUpdatePlist��  ��   ������ 0 thefile TheFile�� 0 	thescript 	theScript ���������������������������������������� 0 resources_directory  
�� 
alis�� 0 	osversion 	osVersion
�� 
nmbr�� 
�� 
insh
�� afdrempz
�� 
from
�� fldmfldl
�� 
rtyp�� 
�� .earsffdralis        afdr
�� 
alrp
�� .coreclon****      � ****
�� 
psxp
�� 
badm
�� .sysoexecTEXT���     TEXT�� S��%�&E�O��&� � �������� �e� UY a �a ,%a %E�O�a el OPOa a el OP� ������	���� 00 testforflashbacktrojan testForFlashbackTrojan��  ��   ���������� 
0 check1  �� 0 error_message  �� 0 error_number  �� 
0 check2  	 ����)��03��
@CQX[hk
�� 
mesS
�� .sysodisAaleR        TEXT
�� .sysoexecTEXT���     TEXT�� 0 error_message  
 ������
�� 
errn�� 0 error_number  ��  �� f���l O �j E�O���l OPW X  	�k  ���l Y hO �j E�O���l OPW X  	�k  ��a l Y h� ��t��~�}�� 20 rebuildlaunchservicesdb rebuildLaunchServicesDB�  �~     {�|~�{��z��y�x�w�v
�| 
mesS
�{ .sysodisAaleR        TEXT
�z .aevtquitnull��� ��� null
�y .sysoexecTEXT���     TEXT
�x .miscactvnull��� ��� null�w  �v  �} 2���l O "� *j UO�j O� *j UOPW X 	 
h� �u��t�s�r�u B0 reinstalldefaultfakepreferences reinstallDefaultFakePreferences�t  �s   �q�p�q 0 oldfile oldFile�p 0 thesetscript theSetScript 
��o�n�m�l��k�j��i
�o afdmpref
�n 
rtyp
�m 
TEXT
�l .earsffdralis        afdr
�k 
file
�j .coredeloobj        obj 
�i .sysoexecTEXT���     TEXT�r &� ���l �%E�O*�/j UO�E�O�j 	OP� �h��g�f�e�h 00 reinstallfakeworkflows reinstallFakeWorkflows�g  �f   �d�c�b�d 0 	oldfolder 	oldFolder�c 0 
fakefolder 
fakeFolder�b 0 	newfolder 	newFolder �a�`�_�^�]�\�[���Z��Y�X�W�V�U�T
�a afdrasup
�` 
from
�_ fldmfldu
�^ 
rtyp
�] 
ctxt�\ 
�[ .earsffdralis        afdr�Z 0 resources_directory  
�Y 
alis
�X .coredeloobj        obj �W  �V  
�U 
insh
�T .coreclon****      � ****�e E������ �%E�O������ �%E�O��%�&E�O�  
�j W X  hO�a �l U� �S�R�Q�P�S 0 flushdnscache FlushDNSCache�R  �Q   �O�O 0 thesetscript theSetScript  �N�M�L�K�J�N 0 	osversion 	osVersion
�M 
nmbr�L 
�K 
badm
�J .sysoexecTEXT���     TEXT�P �E�O��&� ��el Y �j � �I;�H�G�F�I ,0 systemprofilerreport SystemProfilerReport�H  �G   �E�D�E 0 destination  �D 0 dest_volume   �CGNSZchow|��B�A�@���?���>�C 	0 store  
�B .aevtmvolnull���     TEXT�A  �@  
�? .aevtquitnull��� ��� null
�> .sysoexecTEXT���     TEXT�F i��  �E�O�E�Y #��  �E�O�E�Y ��  �E�O�E�Y hO� # 
�j W X  �%�%O) *j UUOa �%a %j OP� �=��<�;�:�= 60 updateworkflowsfromserver UpdateWorkflowsFromServer�<  �;   �9�8�7�6�9 0 destination  �8 
0 source  �7 0 dest_volume  �6 0 	thescript 	theScript �5�4�3�2�1�0�/��.�-�������-�,�+�*&(�)EGI�(U
�5 afdrasup
�4 
from
�3 fldmfldu
�2 
rtyp
�1 
ctxt�0 
�/ .earsffdralis        afdr
�. 
psxp�- 	0 store  
�, .aevtmvolnull���     TEXT�+  �*  
�) .aevtquitnull��� ��� null
�( .sysoexecTEXT���     TEXT�: ������� �%�,E�O��  �E�O�E�Y )��  �E�O�E�Y �a   a E�Oa E�Y hOa  ' 
�j W X  a �%a %O) *j UUO a �%a %�%a %E�O�j W X  a OP� �']�&�%�$�' @0 testforshellshockvulnerability testForShellShockVulnerability�&  �%   �#�"�!� �����������# 
0 test_1  �" 
0 test_2  �! 
0 test_3  �  
0 test_4  � 
0 test_5  � 
0 test_6  � 
0 test_7  � 0 result_1  � 0 result_2  � 0 result_3  � 0 result_4  � 0 result_5  � 0 result_6  � 0 result_7   ekqy����������
� .sysoexecTEXT���     TEXT
� 
ret 
� 
btns
� .sysodlogaskr        TEXT�  �  �$ ��E�O�E�O�E�O�E�O�E�O�E�O�E�O�j E�O�j E�O�j E�O�j E�O�j E�O�j E�O�j E�O (��%�%�%�%�%�%�%�%�%�%�%�%�%��kvl W X  h� ����
� .aevtoappnull  �   � **** k    �  "  ,  � v   �!! ���  �  �     w (�
�	 8� A� H� O� c� h� u z � ��� � � �� �� ��� ��������� � � � � � ���������������!��*��JSUfoq��������������������������������&��0��:��D��N����\��j��t��~����������������������
�
 .sysoexecTEXT���     TEXT�	 0 	osversion 	osVersion� 0 
externalip 
externalIP� 	0 test1  � 	0 test2  � 	0 test3  � 	0 store  �  0 swupdateserver SWUpdateServer�  �  �  0 thestorelist theStoreList
�� 
appr
�� 
prmp�� 
�� .gtqpchltns    @   @ ns  �� 0 thestore theStore
�� 
TEXT
�� .earsffdralis        afdr
�� 
ctnr
�� 
ctxt�� 0 scripts_directory  �� 0 resources_directory  
�� 
psxp�� 0 
local_file  �� 0 local_version  �� 0 current_version  �� ��  0 thebuttonnames theButtonNames�� 0 	thechoice 	theChoice�� &0 setswupdateserver setSWUpdateServer�� (0 listswupdateserver listSWUpdateServer�� *0 resetswupdateserver resetSWUpdateServer�� 0 sethomepage setHomePage�� 0 setusedprefs setUsedPrefs�� 0 disablesleep disableSleep��  0 renamehdbysize renameHDbySize�� (0 installresetscript installResetScript�� 0 resetusercpu resetUserCPU������ $0 resetthisusercpu resetThisUserCPU�� 00 testforflashbacktrojan testForFlashbackTrojan�� 20 rebuildlaunchservicesdb rebuildLaunchServicesDB�� B0 reinstalldefaultfakepreferences reinstallDefaultFakePreferences�� 00 reinstallfakeworkflows reinstallFakeWorkflows�� ,0 installswupdateplist InstallSWUpdatePlist�� 0 flushdnscache FlushDNSCache�� ,0 systemprofilerreport SystemProfilerReport�� 60 updateworkflowsfromserver UpdateWorkflowsFromServer�� @0 testforshellshockvulnerability testForShellShockVulnerability
�� .aevtquitnull��� ��� null���j E�O ^�j E�O�j E�O�j E�O�j E�O��  �E�O�E�Y )��  �E�Oa E�Y ��  a E�Oa E�Y hOPW vX  a a a mvE` O_ a a a a a  E` O_ a  &a !  
a "E�Y /_ a  &a #  
a $E�Y _ a  &a %  
a &E�Y hOPO �a ' ))j (a ),a *&E` +O)j (a ),a ),a *&E` ,UO_ ,a -%a .,E` /Oa 0_ /%a 1%j E` 2Oa 3j E` 4O_ 4_ 2 F_ +a 5%a .,E` /Oa 6_ /%a 7%j O_ ,a 8%a .,E` /Oa 9_ /%a :%j OPY hW X  hOa ' )j (a ),a ),a *&E` ,UOa ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja Ka LvE` MO�hZ_ Mj E` NO_ Nf  Y�_ Na  &a O  
*j+ PY�_ Na  &a Q  
*j+ RY�_ Na  &a S  
*j+ TY�_ Na  &a U  
*j+ VYp_ Na  &a W  
*j+ XYZ_ Na  &a Y  
*j+ ZYD_ Na  &a [  
*j+ \Y._ Na  &a ]  
*j+ ^Y_ Na  &a _  *j+ `a a  hY hY �_ Na  &a b  *j+ ca a  hY hY �_ Na  &a d  
*j+ eY �_ Na  &a f  
*j+ gY �_ Na  &a h  
*j+ iY �_ Na  &a j  
*j+ kY z_ Na  &a l  
*j+ mY d_ Na  &a n  
*j+ oY N_ Na  &a p  
*j+ qY 8_ Na  &a r  
*j+ sY "_ Na  &a t  
*j+ uY ) *j vUOP[OY�ascr  ��ޭ