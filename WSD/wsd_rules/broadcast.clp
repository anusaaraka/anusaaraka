
;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith)19-Feb-2014
;I don't like to broadcast the fact that my father owns the company.
;मैं यह बात सबको नहीं बताना चाहता कि मेरे पिता कम्पनी के मालिक हैं
(defrule broadcast3
(declare (salience 3000))
(id-root ?id broadcast)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(kriyA-vAkya_viBakwi  ?id2 ?id3)
(kriyA-vAkyakarma  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabako_bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broadcast.clp 	broadcast3   "  ?id "  sabako_bawA )" crlf))
)


;****************************DEFAULT RULES*************************************

(defrule broadcast0
(declare (salience 0))
(id-root ?id broadcast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broadcast.clp 	broadcast0   "  ?id "  prasAriwa )" crlf))
)

;"broadcast","Adj","1.prasAriwa"
;The broadcast news
;The broadcast sowing of wheat



;Added by Meena(14.7.11)
;I watch the news broadcast on our local channel. (7th parse of Link parser)
(defrule broadcast1
(declare (salience 0))
(id-root ?id broadcast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broadcast.clp 	broadcast1   "  ?id "  prasAraNa )" crlf))
)

;"broadcast","Adv","1.cAroM_ora/PeMka_kara"

;"broadcast","V","1.cAroM_ora"
;I watch the news broadcast on our local channel.


;Salience reduced by Meena(14.7.11)
;The President's address to the nation was broadcasted across the country. 
(defrule broadcast2
(declare (salience 0))
;(declare (salience 4800))
(id-root ?id broadcast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasAriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broadcast.clp 	broadcast2   "  ?id "  prasAriwa_kara )" crlf))
)

;"broadcast","VTI","1.prasAriwa_karanA"
;The event was broadcasted live on TV.
;
