
(defrule pt0
(declare (salience 5000))
(id-root ?id pt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id Abbr)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pt.clp 	pt0   "  ?id "  BAga )" crlf))
)
;"pt","Abbr:part","1.BAga"
;I want to read shakespeare's Henry IV pt.. 
;If book|novel|story then meaning is pt is part  (This hint Suggested by Chaitanya Sir 30-12-13)
;If first|second|third  "   "			 (This hint Suggested by Chaitanya Sir 30-12-13)

(defrule pt1
(declare (salience 4900))
(id-root ?id pt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id Abbr)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pt.clp 	pt1   "  ?id "  piMta )" crlf))
)
;"pt","Abbr:pint","1.piMta"
;1.pt milk.
;If 1, 2, 3 etc or liquids then meaning is pt is pint (This hint Suggested by Chaitanya Sir 30-12-13)
;

(defrule pt2
(declare (salience 4800))
(id-root ?id pt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id Abbr)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxu_yA_aMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pt.clp 	pt2   "  ?id "  binxu_yA_aMka )" crlf))
)
;"pt","Abbr:points","1.binxu_yA_aMka"
;The winner should score 10 Pts in badminton.
;In games then pt is point  (This hint Suggested by Chaitanya Sir 30-12-13)

(defrule pt3
(declare (salience 4700))
(id-root ?id pt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id Abbr)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id powa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pt.clp 	pt3   "  ?id "  powa )" crlf))
)
;"pt","Abbr:port","1.powa"
;We can see the pt moresby located on the map.
;In map|PropN  (This hint Suggested by Chaitanya Sir 30-12-13) 
;Port Moresby (/ˌpɔərt ˈmɔərzbi/; Tok Pisin: Pot Mosbi) is the capital and largest city of Papua New Guinea (PNG). It is located on the shores of the Gulf of Papua, on the southeastern coast of the Papuan Peninsula of the island of New Guinea
