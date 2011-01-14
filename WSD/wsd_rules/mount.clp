
(defrule mount0
(declare (salience 5000))
(id-root ?id mount)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mounting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ArohaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mount.clp  	mount0   "  ?id "  ArohaNa )" crlf))
)

;"mounting","N","1.ArohaNa"
;They recieved the news that the enemy troops were mounting towards their city.
;
(defrule mount1
(declare (salience 4900))
(id-root ?id mount)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parvawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mount.clp 	mount1   "  ?id "  parvawa )" crlf))
)

;default_sense && category=verb	caDZa_kara_bETa	0
;"mount","V","1.caDZa_kara_bETanA"
;He hurriedly mounted his horse && left.
;
;
;LEVEL 
;Headword : mount
;
;
;Examples --
;
;"mount","N","2.parvawa"
;Mount Everest is the highest peak in the world.
;evaresta parvawa viSva kA sabase UzcA SiKara hE.
;
;"mount","V","1.caDZanA"
;He hurriedly mounted his horse && left.
;vaha jalxI se apane GodZe para caDZa gayA.
;Ravi slowly mounted the steps to reach the terrace.
;Cawa para jAne ke liye ravi XIre-XIre sIDZiyoM para caDZA.
;--"2.caDZAnA"
;Rajat mounted his son on the horse.
;rajawa ne apane bete ko GodZe para caDZAyA.
;--"3.Suru_karanA"
;The employees mounted a protest against the administation's decision.
;praSAsana ke nirNaya ke viruxXa karmacAriyoM ne hadZawAla Suru kI.<---hadZawAla ke yuxXa kI caDZAI karanA <---caDZAI_karanA
;--"4.baDZanA"
;As the number of spectators mounted, the quarralling parties dispersed.
;jEse-hI xarSakoM kI saMKyA baDZI, ladZanevAle loga alaga-alaga ho gaye. <---saMKyA Upara kI ora jAnA <--caDZanA
;The death toll in the WTC bomb attack mounted to over 6000.
;varda treda sentara meM mqwyu kI saMKyA 6000 se aXika baDZa gayI hE.
;--"5.biTAnA"
;He mounted the painting on a wooden frame.
;usane ciwra ko lakadZI kI cOKata para biTA xiyA.
;
;Upara xiye uxAharaNoM se spaRta hE ki aMgrejZI Sabxa 'mount' kA mUla arWa 'caDZanA' hE.
;'caDZAnA', 'caDZAI_karanA', 'baDZanA' iwyAxi usI se vikasiwa hue hEM. 
;'jadZane' vAlA arWa isase asambanXa prawIwa howA hE. kinwu isa arWa meM BI
;'caDZAne' kA BAva nihiwa hE. 
;jaba kisI ciwra Axi kA BalIprakAra praxarSana karanA howA hE wo use kisI sWANa para sahI
;warIke se biTA xewe hEM. usa arWa meM xiwra ko cOKata para caDZA kara bETA xiyA jAwA hE. yahAz 'caDZA_kara_bETAne' kA BAva hE. Ora yahI isa saMxarBa meM 
;'mount' Sabxa ke prayoga kI vyAKyA karawA hE. yAni, kisI ciwra Axi ko cOKata para caDZAnA. 
;
;awaH isa Sabxa kA sUwra hogA -
;
;sUwra : caDZa[kara]bETanA
;
;
;kuCa vicAra -
;
;nimna vAkya xeKiye -
;
;1E. He climbed the tree
;1H. vaha pedZa para caDZa gayA      
;
;2E. *He mounted the tree       
;2H. vaha pedZa para caDZa gayA         
;
;3E. *He climbed the horse
;    vaha GodZe para caDZa gayA
; 
;4E. He mounted the horse.
;    vaha GodZe para caDZa gayA
;
;5E. He climbed the mountain
;    vaha pahAdZa para caDZa gayA
;
;6E. *He mounted a mountain.
;    vaha pahAdZa para caDZa gayaa
;
;But 
;
;7E. He climbed the steps
;    vaha sIDiyAz caDZa gayA
;
;8E. He mounted the steps.
;    vaha sIDZiyoM para caDZa gayA. 
;
;ina vAkyoM meM 'caDZane' ke liye aMgrejZI Sabxa wo alaga alaga hEM (kramaSaH
;climb && mount) kinwu hinxI meM eka hI arWa mila rahA hE. aMgrejZI meM
;kuCa saMxarBoM meM 'climb' kA prayoga howA hE Ora kuCa meM 'mount' kA prayoga
;uciwa hE. vAkya 7 Ora 8 meM eka hI saMxarBa meM 'climb' Ora 'mount' xonoM 
;samBava hE. kinwu ina vAkyoM meM arWa ke swara para anwara BI hE, jo hinxI 
;meM bahuwa spaRta nahIM hE. xaraasala aMgrejZI kI ye xono kriyAez 'caDZAne' ke
;BAva ko hI aBIvyakwa karawI hEM. kinwu xono ke vyApAra meM anwara hE. 
;'climb' meM caDZane kI kriyA kA vyApAra mahawvapUrNa hE Ora 'mount'
; kriyA kA Pala.
; awaH 'climb' kA arWa 'caDZakara_bETanA' hogA.  
;
