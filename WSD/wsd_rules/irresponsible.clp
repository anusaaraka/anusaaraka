
(defrule irresponsible0
(declare (salience 5000))
(id-root ?id irresponsible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gEra_jZimmexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  irresponsible.clp 	irresponsible0   "  ?id "  gEra_jZimmexAra )" crlf))
)

(defrule irresponsible1
(declare (salience 4900))
(id-root ?id irresponsible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gEra-jZimmexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  irresponsible.clp 	irresponsible1   "  ?id "  gEra-jZimmexAra )" crlf))
)

;"irresponsible","Adj","1.gEra-jZimmexAra"
;He is an irresponsible child.
;
;
;LEVEL 
;
;
;Headword : irresponsible
;
;Examples --
;
;Adj
;"1.gEra_jZimmexAra"
;He is very irresponsible.
;vaha bahuwa gEra_jZimmexAra hE.
;
;Adv
;"1.gEra_jZimmexArI"
;It was irresponsible of you to have left the door open.
;xaravAjA KulA CodZanA wumhArI gEra_jZimmexArI WI.
;
;
;Upara ke uxAharaNoM se spaRta hE ki 'irresponsible' ke liye hinxI meM
;'gEra_jZimmexAra' Sabxa TIka rahegA.
;
;sUwra : gEra_jZimmexAra
;
;isase sambanXiwa kuCa carcA irresponsible vs not responsible meM xeKeM.
;
;
