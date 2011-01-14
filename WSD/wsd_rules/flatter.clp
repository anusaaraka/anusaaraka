
(defrule flatter0
(declare (salience 5000))
(id-root ?id flatter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flattering )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cApalUsI_karane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flatter.clp  	flatter0   "  ?id "  cApalUsI_karane_vAlA )" crlf))
)

;"flattering","Adj","1.cApalUsI karane vAlA"
;The farewell speech was very flattering to the boss.
;--"2.praSaMsA karane yogya"
;You are wearing a flattering dress.
;
(defrule flatter1
(declare (salience 4900))
(id-root ?id flatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cApalUsI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flatter.clp 	flatter1   "  ?id "  cApalUsI_kara )" crlf))
)

;"flatter","V","1.cApalUsI_karanA"
;He always flatters his superiors to keep himself in their good books.
;--"2.KuSa honA"
;I was flattered by his praise of my book.
;--"3.rOSana_honA[karanA]"
;This dress flatters your complexion very much.
;
;