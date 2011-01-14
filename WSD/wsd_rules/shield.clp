
(defrule shield0
(declare (salience 5000))
(id-root ?id shield)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DZAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shield.clp 	shield0   "  ?id "  DZAla )" crlf))
)

;"shield","N","1.DZAla"
;The warriors shield is made of iron.
;--"2.golAkAra_puraskAra"
;I won this shield in the art comptetion.
;--"3.kulacihna-Palaka"
;A drawing or model of a shield displaying a court of arms is called shield.
;--"4.parirakRaka"
;The gunman used the hostages as a (human) shield.
;--"5.kavaca"
;The duke has sent a large shield to him.
;
(defrule shield1
(declare (salience 4900))
(id-root ?id shield)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shield.clp 	shield1   "  ?id "  rakRA_kara )" crlf))
)

;"shield","V","1.rakRA_karanA/bacAnA"
;The ozone layer shields the earth so as to protect is from harmful rays.
;
