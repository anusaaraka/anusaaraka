
(defrule keen0
(declare (salience 5000))
(id-root ?id keen)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwsuka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  keen.clp 	keen0   "  ?id "  uwsuka )" crlf))
)

;"keen","Adj","1.uwsuka"
;He was a keen player of outdoor sports.
;--"2.icCuka"
;She is keen to take on medical line.
;He is keen on marrying  your sister.
;--"3.wIkRNa/pEnA/wejZa"
;Eagle has a keen eyesight.
;This knife has a keen blade.
;--"4.kuSAgra/wejZa"
;He has a keen mind.
;--"5.wejZa"
;Dogs have a keen sense of smell.
;
(defrule keen1
(declare (salience 4900))
(id-root ?id keen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xilacaspI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  keen.clp 	keen1   "  ?id "  xilacaspI_raKa )" crlf))
)

;"keen","V","1.xilacaspI_raKanA"
;He is keen on your sister.
;--"2.vilApa_karanA"
;He is keening over his dead brother.
;
;LEVEL 
;Headword : keen
;
;Examples --
;"keen","Adj","1.joSIlA"
;He was a keen player of outdoor sports.
;vaha bAhara(Gara ke) Kele jAne vAle KeloM kA joSIlA KilAdZI WA. 
;--"2.icCuka"
;He is keen on marrying  your sister.
;vaha wumhArI bahana se SAxI karane kA icCuka hE.
;--"3.wIkRNa/pEnA/wejZa"
;Eagle has a keen eyesight.
;cIla kI xqRti bahuwa pEnI howI hE.
;This knife has a keen blade.
;isa cAkU kI XAra bahuwa pEnI hE.
;--"4.kuSAgra/wejZa"
;He has a keen mind.
;vaha bahuwa kuSAgra buxXi vAlA hE.
;--"5.wejZa"
;Dogs have a keen sense of smell.
;kuwwoM kI GrANaSakwi bahuwa wejZa howI hE.
;
;"keen","V","1.xilacaspI_raKanA"
;He is keen on your sister.
;vaha wumhArI bahana meM xilacaspI raKawA hE.
;He is keening over his dead brother.
;vaha apane mqwa BAI ke liye vilApa kara rahA hE.
;
;Upara xiye uxAharaNoM se EsA lagawA hE ki 'keen' Sabxa kA mUla arWa 'wIkRNa yA pEnA' hE. usI se isake SeRa arWa prajaniwa hue lagawe hEM.  isakA anwarnihawa sUwra hogA --
;
;anwarnihawa sUwra ;
;
;
;     pEnA yA wIkRNa - wIvra(buxXi, xqRti, XAra) - wIvra_icCA --wIvra_icCA_raKanA -icCuka_honA, joSIlA_honA
;                   
; 
;isakA sUwra hogA --
;
;   sUwra : pEnA^icCuka
;
;
