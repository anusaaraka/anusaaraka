;;by Ritesh Srivastava 13-june-2011
;;Their plea is likely to fall on deaf ear.
;;unakA nivexana samBava anasunA karanA hE.
(defrule deaf0
(declare (salience 5000))
(id-root ?id deaf)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ears)
(id-word ?id2 fall)
(kriyA-on_saMbanXI ?id2 ?id1)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 anasunA_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " deaf.clp	deaf0  "  ?id "  " ?id1 " " ?id2 " anasunA_karanA  )" crlf))
)


;;Tito turned a deaf ear to all appeals. 
;;Tito ne saba apIla ko anasunA karanA.
(defrule deaf1
(declare (salience 4900))
(id-root ?id deaf)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ear)
(id-root ?id2 turn)
(id-word ?id3 a)
(kriyA-object ?id2 ?id1)
(viSeRya-viSeRaNa ?id1 ?id)
(viSeRya-det_viSeRaNa ?id1 ?id3)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 ?id3 anasunA_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " deaf.clp	deaf1  "  ?id "  " ?id1 " " ?id2 " " ?id3 " anasunA_karanA  )" crlf))
)

;;she is deaf to all advices.
(defrule deaf2
(declare (salience 4800))
(id-root ?id deaf)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nahI_sunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " deaf.clp	deaf2  "  ?id "  nahI_sunA  )" crlf))
)
