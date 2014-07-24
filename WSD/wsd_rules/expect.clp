
(defrule expect0
(declare (salience 5000))
(id-root ?id expect)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 call)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawIkRA_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expect.clp 	expect0   "  ?id "  prawIkRA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expect.clp    expect0   "  ?id " kI )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 25-11-2013
;We are expecting a lot of applicants for the job.        ;cald
;नौकरी के लिए हम बहुत सारे आवेदन की अपेक्षा कर रहें हैं .
;spelling corrected from 'apekaRA_kara' to 'apekRA_kara' on 03-02-2014
;condition changed from '(viSeRya-of_saMbanXI  ?id1 ?id2)' to '(viSeRya-for_saMbanXI  ?id1 ?id2)' on 05-02-2014

(defrule expect1
(declare (salience 4900))
(id-root ?id expect)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-for_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apekRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expect.clp 	expect1   "  ?id "  apekRA_kara )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 25-11-2013
;I expect you'll find it somewhere in your bedroom. ;cald
;मुझे लगता  है कि तुम्हें वह कही अपने बेडरूम में मिल जायेगा .
;I expect he'd have left anyway.         ;cald
;मुझे लगता है कि वह अब तक चला गया होगा .
;'(kriyA-vAkya_viBakwi  ?id1 ?id2)'and '(id-word ?id2 that)' conditions are removed on 03-02-2014
(defrule expect2
(declare (salience 4900))
(id-root ?id expect)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id ?id1)

(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expect.clp 	expect2   "  ?id "  laga )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  expect.clp    expect2   "  ?id " ko )" crlf)
)
)

(defrule expect3
(declare (salience 4000))
(id-root ?id expect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASA_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expect.clp 	expect3   "  ?id "  ASA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  expect.clp    expect3   "  ?id " kI )" crlf)
)
)

;default_sense && category=verb	ASA_raKa	0
;"expect","VT","1.ASA_raKanA"
;We were expecting a visit from our relatives
;
;

;@@@ Added by Pramila(Banasthali University) on 04-02-2014
;Of the members of the Committee, Hornell, the Director of Public Instruction of Bengal, and W.C. Wordsworth, Principal, Presidency 
;College, were expected to oppose the scheme of centralization of post-graduate studies.     ; gyannidhi
;समिति के सदस्यों में बंगाल के सार्वजनिक शिक्षा निदेशक हॉरनेल और प्रेसीडेंसी कालिज के प्राचार्य डब्ल्यू॰ सी॰ ^^वर्ड् सवर्थ से स्नातकोत्तर  अधयापन के केन्द्रीकरण की योजना के विरोध की उम्मीद की थी।
(defrule expect4
(declare (salience 5000))
(id-root ?id expect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ummIxa_kara))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expect.clp 	expect4   "  ?id "  ummIxa_kara)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  expect.clp    expect4   "  ?id " se )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 06-02-2014
;We are expecting very few applicants this year.        ;sentence given by Aditi Ma'am.
;इस साल हम नौकरी के लिए बहुत कम आवेदन की अपेक्षा कर रहें हैं .
(defrule expect5
(declare (salience 4900))
(id-root ?id expect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-viSeRaNa  ?id1 ?id2)
(viSeRya-det_viSeRaNa  ?id2 ?id3)
(id-word ?id3 this)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apekRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expect.clp 	expect5   "  ?id "  apekRA_kara )" crlf)
)
)
