;@@@ Added by jagriti(5.3.2014)
;A publicity stunt.[oald]
;These stunts in newspaper will not help your election.[rajpal]
;समाचारपत्र में ये इश्तहारबाज़ी आपके चुनाव में सहायता नहीं करेंगे . 
(defrule stunt2
(declare (salience 5000))
(id-root ?id stunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI ?id ?id1)
(id-root ?id1 publicity|newspaper)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSwahArabAjZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stunt.clp 	stunt2   "  ?id "  iSwahArabAjZI )" crlf))
)


;....default rule......
(defrule stunt0
(declare (salience 100))
(id-root ?id stunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bala_praxarSana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stunt.clp 	stunt0   "  ?id "  bala_praxarSana )" crlf))
)

;"stunt","N","1.bala_praxarSana"
;This movie has many stunts.
;
(defrule stunt1
(declare (salience 100))
(id-root ?id stunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZane_na_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stunt.clp 	stunt1   "  ?id "  baDZane_na_xe )" crlf))
)

;"stunt","V","1.baDZane_na_xenA"
;Inadiquate food can stunt a child's developement.
;
