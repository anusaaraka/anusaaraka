

;@@@ Added by Anita-1.5.2014
;My typewriter needs a new ribbon. [cambridge dictionary]
;मेरे टंकणक को नए रिबन की जरूरत है  ।
(defrule ribbon0
(declare (salience 1000))
(id-root ?id ribbon)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ribana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ribbon.clp 	ribbon0   "  ?id "   ribana)" crlf))
)

;@@@ Added by Anita-1.5.2014
;A ribbon of road stretched ahead of us across the desert. [cambridge dictionary]
;सड़क की एक पट्टी हमारे आगे रेगिस्तान तक फैली हुई थी । 
;The road was a ribbon of moonlight. [oxford learner's dictionary]
;सड़क चांदनी में एक पट्टी  जैसी थी ।
(defrule ribbon1
(declare (salience 2000))
(id-root ?id ribbon)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ribbon.clp 	ribbon1   "  ?id "   pattI)" crlf))
)

;@@@ Added by Anita-1.5.2014
;A present tied with yellow ribbon . [oxford learner's dictionary]
;तोहफे को पीले फीते से बाँधा ।
;She was wearing two blue silk ribbons in her hair. [oxford learner's dictionary]
;उसने अपने बालों में  सिल्क के दो फीते पहने हुए थे ।
;The round medals, 32 mm in diameter, were to be worn on a plain red ribbon. 
; 32 एम एम व्यास वाले गोल पदकों को लाल सादे फीतों पर पहनना था ।  
(defrule ribbon2
(declare (salience 3000))
(id-root ?id ribbon)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 yellow|blue|red|black|white|silk)
(viSeRya-viSeRaNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ribbon.clp 	ribbon2   "  ?id "   PIwA)" crlf))
)
;########################default-rule#################################

;@@@ Added by Anita-1.5.2014
;He tied up the present with ribbon. [cambridge dictionary]
;उन्होंने तोहफे को फीते से बांध दिया ।
;Sandra often wears a ribbon in her hair. [cambridge dictionary]
;सान्द्रा अक्सर अपने बालों में फीता बाँधती है ।
;Lengths of velvet ribbon. [oxford learner's dictionary]
;मखमली फीते ।
;They  use a ribbon that is permeated with cyan, magenta, and yellow dyes. [Dante dictionary]
;वे ऐसे फीतों का  प्रयोग करते हैं जिनमें हरिनीले, रानी एवं पीले रंग फैले रहते हैं ।
(defrule ribbon_default-rule
(declare (salience 0))
(id-root ?id ribbon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ribbon.clp 	ribbon_default-rule   "  ?id "   PIwA)" crlf))
)
