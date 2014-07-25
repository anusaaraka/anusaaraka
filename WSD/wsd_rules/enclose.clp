;Added by sheetal(10/6/10)
(defrule enclose0
(declare (salience 4800))
(id-root ?id enclose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with|herewith)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enclose.clp       enclose0   "  ?id "  Beja )" crlf))
)




;Added by Meena(14.6.10)
;The park that encloses the monument has recently been enlarged .
(defrule enclose1
(declare (salience 5000))
(id-root ?id enclose)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 monument)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gera))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enclose.clp      enclose1   "  ?id "  Gera )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enclose.clp      enclose1   "  ?id " ko )" crlf)
)
)
;The law implies that the total electric flux through a closed surface is zero if no charge is enclosed by the surface.
;इस नियम से यह उपलक्षित होता है कि यदि किसी बन्द पृष्ठ द्वारा कोई आवेश परिबद्ध नहीं किया गया है तो उस पृष्ठ से गुजरने वाला कुल फ्लक्स शून्य होता है .   [physics]
;As a simple application of the notion of electric flux, let us consider the total flux through a sphere of radius 
;r, which encloses a point charge q at its center.
;वैद्युत फ्लक्स की अवधारणा के सरल अनुप्रयोग के रूप में आइए किसी r त्रिज्या के ऐसे गोले जिसके केन्द्र पर कोई बिन्दु आवेश q परिबद्ध करता है , से गुजरने वाले कुल फ्लक्स पर विचार करें .

;added by Pramila(Banasthali university)on 23-10-2013
(defrule enclose2
(declare (salience 5000))
(id-root ?id enclose)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-by_saMbanXI  ?id ?id1)(kriyA-at_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paribaxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enclose.clp       enclose2   "  ?id "  paribaxXa_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali university)on 29-01-2014
;Farmers often enclose their land with hedges.           ;shiksharthi
;किसान प्रायः बाड़ लगाकर अपने खेत को घेरते हैं.
(defrule enclose3
(declare (salience 5000))
(id-root ?id enclose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
(id-root ?id1 hedge)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAda_lagAkara_Gera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " enclose.clp	enclose3  "  ?id "  " ?id1 "  bAda_lagAkara_Gera  )" crlf))
)

;@@@ Added by Pramila(Banasthali university)on 29-01-2014
;Walls enclosed the playground.           ;shiksharthi
;दीवारें खेल के मैदान को घेरे हुए थी.
(defrule enclose4
(declare (salience 5000))
(id-root ?id enclose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 wall)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gere_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enclose.clp       enclose4   "  ?id "  Gere_ho )" crlf))
)

;@@@ Added by Pramila(Banasthali university)on 29-01-2014
;The garden was enclosed with a high wall.           ;shiksharthi
;बगीचा ऊँची दीवार से घेर लिया गया था.
(defrule enclose5
(declare (salience 5000))
(id-root ?id enclose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
(id-root ?id1 wall)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gera_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enclose.clp       enclose5   "  ?id "  Gera_le )" crlf))
)

;@@@ Added by Pramila(Banasthali university)on 29-01-2014
;With this letter I have enclosed a cheque,photograph.           ;shiksharthi
;इस पत्र के साथ मैंने एक चेक,फोटोग्राफ संलग्न किया है.
(defrule enclose6
(declare (salience 4900))
(id-root ?id enclose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMlagna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enclose.clp       enclose6   "  ?id "  saMlagna_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali university)on 29-01-2014
;All translated words should be enclosed in brackets.         ;oald
;सभी अनुवादित शब्दों को कोष्ठक में बंद करना चाहिए.
(defrule enclose7
(declare (salience 5000))
(id-root ?id enclose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enclose.clp       enclose7   "  ?id "  baMxa_kara )" crlf))
)
