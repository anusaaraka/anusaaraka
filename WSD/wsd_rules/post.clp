
(defrule post0
(declare (salience 5000))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaMbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post0   "  ?id "  KaMbA )" crlf))
)

;"post","N","1.KaMbA"
;Tie the tennis net to the post.
;--"2.sWAna"
;The soldiers are at their posts.
;--"3.paxa"
;She is trying for the post of typist.
;--"4.dAka"
;There was post for you this morning.
;
(defrule post1
(declare (salience 4900))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 letter)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAka_se_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post1   "  ?id "  dAka_se_Beja )" crlf))
)

(defrule post2
(declare (salience 4800))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post2   "  ?id "  cipakA )" crlf))
)

;"post","V","1.cipakAnA"
;The results of the exam were posted on the notice board.
;--"2.niyukwa_karanA"
;After several years in Hyderabad he was posted to Delhi.
;--"3.dAka_meM_dAlanA"
;Could you post this leter for me?
;--"4.dAka_se_BejanA"
;They will post me the cheque as soon as they recieve my bill.
;
