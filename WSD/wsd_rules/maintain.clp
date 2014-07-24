;@@@ Added by Nandini(16-1-14)
;He maintained that it was only prejudice and a spirit of conservatism, a blindness to the developing social needs and relations, which could shut out the use of this fruitful source of general principles.[via mail] ;उनका मानना था कि यह मात्र पर्वधारणा और रूढ़िवादी विचार थे, उभरती हुई सामाजिक आवश्यकताओं और संबंधों की अनदेखी करना था जिसके कारण सामान्य सिद्धांतों के इस उपयोगी स्त्रोत का इस्तेमाल नहीं किया जा रहा था। 
(defrule maintain0
(declare (salience 120))
(id-root ?id maintain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id ?id1)
;(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  maintain.clp 	maintain0   "  ?id "  mAna)" crlf))
)

;@@@ Added by Nandini(16-1-14)
;Please maintain a record clean.[oxford advanced learner's dictionary]
;kqpayA aBileKa svacCa raKie.
(defrule maintain1
(declare (salience 200))
(id-root ?id maintain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  maintain.clp 	maintain1   "  ?id "  raKa)" crlf))
)

;@@@ Added by Nandini(16-1-14)
;He maintained his innocence.[oxford advanced learner's dictionary]
;usane apanI/apanA sAXuwA/bolApana banAye raKI/raKA.
(defrule maintain2
(declare (salience 300))
(id-root ?id maintain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 innocence|relation|peace);Added "peace" word in the list by Nandini(3-5-15)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banAye_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  maintain.clp 	maintain2   "  ?id "  banAye_raKa)" crlf))
)

;@@@ Added by Nandini(16-1-14)
;'But I am innocent!' she maintained. [oxford advanced learner's dictionary]
;usane kahA 'paranwu mEM nirxoRa hUz!'.
(defrule maintain3
(declare (salience 400))
(id-root ?id maintain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id1 ?id)
(id-root ?id1 innocent)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  maintain.clp 	maintain3   "  ?id "  kaha)" crlf))
)

;@@@ Added by Nandini(16-1-14)
;Her income was barely enough to maintain one child.[oxford advanced learner's dictionary]
;usakI Aya eka bacce kA BaraNa_poRaNa karane ke liye muSkila se paryApwa WI.
(defrule maintain4
(declare (salience 500))
(id-root ?id maintain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 income)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaraNa_poRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  maintain.clp 	maintain4   "  ?id "  BaraNa_poRaNa_kara)" crlf))
)
