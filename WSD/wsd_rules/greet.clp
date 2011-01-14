
(defrule greet0
(declare (salience 5000))
(id-root ?id greet)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id greeting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SuBakAmanAez))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  greet.clp  	greet0   "  ?id "  SuBakAmanAez )" crlf))
)

;"greeting","N","1.SuBakAmanAez"
;The Prime Minister sent his Diwali greetings to people.
;
;default_sense && category=verb	praNAma_kara	0
(defrule greet1
(declare (salience 4900))
(id-root ?id greet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBivAxana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  greet.clp 	greet1   "  ?id "  aBivAxana_kara )" crlf))
)

;"greet","V","1.praNAma_karanA"
;They greeted the Prime Minister.
;
;
