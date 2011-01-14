(defglobal ?*lid_wrid* = lid_wrdid_fp)

(defrule id-link_id_map
(id_w_adv-word ?id&:(> ?id 0) ?wrd)
(id-original_word ?l_id&:(>= ?l_id ?id) ?wrd)
(not (id-original_word ?l_id1&:(and (>= ?l_id1 ?id) (< ?l_id1 ?l_id)) ?wrd))
 =>
                (printout ?*lid_wrid* "(lwgid-wordid  " ?id"  " ?l_id ")" crlf)

 )

