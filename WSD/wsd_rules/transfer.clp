
(defrule transfer0
(declare (salience 5000))
(id-root ?id transfer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAnAnwaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  transfer.clp 	transfer0   "  ?id "  sWAnAnwaraNa )" crlf))
)

;"transfer","N","1.sWAnAnwaraNa"
;Uma's transfer was a surprise to her friends.
;
(defrule transfer1
(declare (salience 4900))
(id-root ?id transfer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwariwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  transfer.clp 	transfer1   "  ?id "  anwariwa_kara )" crlf))
)

;"transfer","VI","1.anwariwa_karanA"
;He got the money transferred from the bank.
;--"2.sWAnAnwariwa_karanA"
;Ajay was transferred from Delhi to Bhilai.
;--"3.sOMpanA"
;He transferred his property to his brother.
;--"4.anuciwriwa_karanA"
;Her novels were transferred into cinema.
;

;@@@ Added by Prachi Rathore[29-3-14]
; He was transferred from Nehru Nagar Hariparvat to Bamrauli Katara just 3 days ago.[news]
;तीन दिन पहले ही हरीपर्वत की नेहरू नगर चौकी से बमरौली कटारा स्थानांतरण हुआ था।
(defrule transfer3
(declare (salience 5000))
(id-root ?id transfer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI ?id ?)
(kriyA-to_saMbanXI  ?id ?)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAnAnwariwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  transfer.clp 	transfer3   "  ?id "  sWAnAnwariwa_kara )" crlf))
)
