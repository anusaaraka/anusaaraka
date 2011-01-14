
(defrule lodge0
(declare (salience 5000))
(id-root ?id lodge)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lodging )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id asWAyI_nivAsa_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lodge.clp  	lodge0   "  ?id "  asWAyI_nivAsa_sWAna )" crlf))
)

;"lodging","N","1.asWAyI_nivAsa_sWAna"
;Board && lodging will be taken care of by the society.
;
(defrule lodge1
(declare (salience 4900))
(id-root ?id lodge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id makAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lodge.clp 	lodge1   "  ?id "  makAna )" crlf))
)

(defrule lodge2
(declare (salience 4800))
(id-root ?id lodge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lodge.clp 	lodge2   "  ?id "  xarja_kara )" crlf))
)

;"lodge","V","1.xarja karanA"
;He lodged a complaint with the police.
;--"2.TaharAnA"
;He was lodged in the outhouse. 
;--"3.TaharanA"
;He is lodging in a family as a paying guest.
;--"4.jamA karanA"
;Lodging valuables with the bank.
;
;