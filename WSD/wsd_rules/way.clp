
(defrule way0
(declare (salience 5000))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) different)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp 	way0   "  ?id "  warIkA )" crlf))
)

;It has influenced education in different ways.
(defrule way1
(declare (salience 4900))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) active)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp 	way1   "  ?id "  warIkA )" crlf))
)

;Behaviour is a specific response which can be seen && observed in an active way.
(defrule way2
(declare (salience 100))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp 	way2   "  ?id "  mArga )" crlf))
)

;default_sense && category=noun	paWa	0
;"way","N","1.paWa"
;This way leads to the field
;

;Added by sheetal(18-01-10).
(defrule way3
(declare (salience 4950))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) the)
(or (kriyA-kriyA_viSeRaNa ?id1 ?id)(kriyA-object_2 ?id1 ?id)(kriyA-object ?id1 ?id)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_prakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp       way3   "  ?id "  usa_prakAra )" crlf))
)
;Do it the way you have always done it .
;I really like the way you do your hair . 

;Added by Aditya and Hardik(17.7.13)

;"ora"
;Turn your face this way.
;I turned my face that way.

;"warIkA"
;I don't think this will work, we better start looking for an alternative way.
;I don't know which way i am supposed to do it.

;@@@ Added by Pramila(BU) on 21-02-2014
;Turn your face this way.
;अपना चेहरा इस ओर कीजिए.
(defrule way4
(declare (salience 4800))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-object  ?kri ?id1)
(id-root ?kri turn)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp 	way4   "  ?id "  ora )" crlf))
)

;@@@ Added by Pramila(BU) on 21-02-2014
;That way, bacteria will never know that they have achieved the kind of threshold necessary to establish an infection in the body.
;उस प्रकार, बैक्टीरिया को  कभी पता नहीं चलेगा कि वे शरीर में संक्रमण की स्थापना के लिए आवश्यक सीमा तक पहुँच चिके है.
(defrule way5
(declare (salience 4800))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?kri ?id)
(kriyA-vAkyakarma  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp 	way5   "  ?id "  prakAra )" crlf))
)

;@@@ Added by Pramila(BU) on 21-02-2014
;What's the best way of approaching this problem?   ;oald
;इस समस्या को हल करने का सबसे अच्छा तरीका क्या है.
(defrule way6
(declare (salience 4800))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id ?id1)
(id-root ?id1 what|which)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp 	way6   "  ?id "  warIkA )" crlf))
)

;@@@ Added by Pramila(BU) on 21-02-2014
;It was obvious that, with Sankaran Nair as Education Member, Sharp was not having everything his own way.   ;gyanidhi
;यह स्पष्ट था कि शंकरन नायर के शिक्षा सदस्य होते हुए शार्प प्रत्येक कार्य अपनी तरीके से नहीं कर पा रहे थे।
(defrule way7
(declare (salience 4800))
(id-root ?id way)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-object  ?kri ?id1)
(id-root ?kri have|do)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  way.clp 	way7   "  ?id "  warIkA )" crlf))
)
