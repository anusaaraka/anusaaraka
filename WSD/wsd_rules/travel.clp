
(defrule travel0
(declare (salience 5000))
(id-root ?id travel)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id travelled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUmanA))
;(assert (id-H_vib_mng ?id en)) Commented by Roja (12-08-13) Hindi tam should be given instead if english tam
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  travel.clp  	travel0   "  ?id "  GUmanA )" crlf))
;(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  travel.clp     travel0   "  ?id " en )" crlf))
)

;Changed by Amba from the following dict defn
;"travelled","Adj","1.bahuwa_GUmA_huA"
;Ram is well travelled.
;
;
(defrule travel1
(declare (salience 3000))
(id-root ?id travel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAwrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  travel.clp 	travel1   "  ?id "  yAwrA_kara )" crlf))
)

(defrule travel2
(declare (salience 4800))
(id-root ?id travel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAwrA_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  travel.clp 	travel2   "  ?id "  yAwrA_kA )" crlf))
)

;"travel","Adj","1.yAwrA_kA"
;Take your travel bag.
;


;Added by Meena(31.8.09)
;The shadow travels with the sun.
(defrule travel3
(declare (salience 4800))
(id-root ?id travel)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id2)
(kriyA-with_saMbanXI ?id ?id3) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  travel.clp    travel3   "  ?id "  cala )" crlf))
)

;@@@ Added by Prachi Rathore[3-3-14]
;The job involves a considerable amount of foreign travel.
;नौकरी में काफी विदेशी यात्रा भी सम्मिलित है . ?
(defrule travel4
(declare (salience 3000))
(id-root ?id travel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  travel.clp 	travel4   "  ?id "  yAwrA )" crlf))
)

;@@@ Added by Prachi Rathore[19-3-14]
; While that train must be traveling faster than you to be able to pass you it does seem slower to you than it would be to someone standing on the ground and watching both the trains.[ncert]
;क्योङ्कि यह रेलगाडी आपसे आगे निकल जाती है इसलिए यह आपकी रेलगाडी से अधिक तीव्र गति से चल रही है ; परन्तु यह आपको उस व्यक्ति की अपेक्षा धीमी चलती दिखाई दे रही होगी, जो धरती पर खडा होकर दोनों रेलगाडियों को देख रहा है ...... ....

(defrule travel5
(declare (salience 4800))
(id-root ?id travel)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 train|bus)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  travel.clp    travel5   "  ?id "  cala )" crlf))
)
