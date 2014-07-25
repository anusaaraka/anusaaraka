
(defrule liable0
(declare (salience 5000))
(id-root ?id liable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZimmexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liable.clp 	liable0   "  ?id "  jZimmexAra )" crlf))
)

(defrule liable1
(declare (salience 4900))
(id-root ?id liable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liable.clp 	liable1   "  ?id "  xAyI )" crlf))
)

;@@@   --- Added by Nandini(16-4-14)
;The bridge is liable to collapse at any moment.
(defrule liable2
(declare (salience 5050))
(id-root ?id liable)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ?id ?id1)
(id-root ?id1 collapse)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBAvanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liable.clp 	liable2   "  ?id "  saMBAvanA )" crlf))
)

;@@@   --- Added by Nandini(16-4-14)
;The company shall be liable for any damage caused in transit.
;kampanI mArgasWa kAraNa huI kisI hAni ke liye uwwearaxAyI hogI.
(defrule liable3
(declare (salience 5050))
(id-root ?id liable)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-root ?id1 damage)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwearaxAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liable.clp 	liable3   "  ?id "  uwwearaxAyI)" crlf))
)

;@@@   --- Added by Nandini(16-4-14)
;People who earn under a certain amount are not liable to pay tax.[oald]
;jo loga eka viSeSa rakama ke nIce kamAwe hEM ve kara cukAne ke liye bAXya nahIM hEM.
(defrule liable4
(declare (salience 5050))
(id-root ?id liable)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ?id ?id1)
(id-root ?id1 pay)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAXya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liable.clp 	liable4   "  ?id "  bAXya )" crlf))
)



;"liable","Adj","1.xAyI"
;Trespasser are liable to be fined.
;--"2.uwwaraxAyiwva"
;The company shall be liable for any damage caused in transit.
;--"3.saMBAvya"
;Under stress they are liable to lose their balance.
;
;
