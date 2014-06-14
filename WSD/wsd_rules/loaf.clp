;$$$--- Modified by Nandini(19-5-14) 
;He bought two white loaves. [OALD]  ;Added eng-sentence  by Nandini 
;usane xo saPexa pAvarotI KarIxIM.     ;Added hin-sentence  by Nandini     
(defrule loaf0
(declare (salience 5000))
(id-root ?id loaf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAvarotI)) ;meaning change by Nandini
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loaf.clp 	loaf0   "  ?id "  pAvarotI )" crlf))
)

(defrule loaf1
(declare (salience 4900))
(id-root ?id loaf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvArAgarxI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loaf.clp 	loaf1   "  ?id "  AvArAgarxI_kara )" crlf))
)

;"loaf","V","1.AvArAgarxI_karanA"
;He spends all day loafing about.
;
;
