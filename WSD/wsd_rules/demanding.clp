
;@@@ Added by Pramila(Banasthali university) on 22-02-2014
;Applied physics is equally demanding.        ;ncert
;अनुप्रयुक्त भौतिकी समान रूप से महत्वपूर्ण है.
(defrule demand0
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(viSeRya-viSeRaka  ?id ?id2)
(id-root ?id2 equally)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mahawwavapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  demanding.clp  	demand0   "  ?id "  mahawwavapUrNa )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 22-02-2014
;a demanding boss         ;oald
;अत्यधिक काम की अपेक्षा रखने वाला मालिक
(defrule demand1
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 boss|manager)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id awyaXika_kAma_kI_apekRA_karane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  demanding.clp  	demand1   "  ?id "  awyaXika_kAma_kI_apekRA_karane_vAlA )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 22-02-2014
;The most demanding challenge I have ever faced  ;oald
;सबसे मुश्किल चुनौती जिसका मैंने अभी तक सामना किया.
(defrule demand2
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 challenge)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id muSkila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  demanding.clp  	demand2   "  ?id "  muSkila )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 22-02-2014
;The work is physically demanding.         ;oald
;कार्य अत्यधिक शारीरिक मेहनत वाला है.
(defrule demand3
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 work)
(id-word =(- ?id 1) physically)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) awyaXika_SArIrika_mehanawa_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " demanding.clp	demand3  "  ?id "  " (- ?id 1) "  awyaXika_SArIrika_mehanawa_vAlA  )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 22-02-2014
;The job of a medical practitioner is highly demanding.    [sentence of old clp of "demand.clp"]
;एक चिकित्सक की नौकरी अत्यधिक दक्षतापूर्ण है.
(defrule demand4
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(viSeRya-viSeRaNa  ?id2 ?id3)
(id-root ?id3 medical)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xakRawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  demanding.clp  	demand4   "  ?id "  xakRawApUrNa )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 22-02-2014
;My grandma became very demanding as she got older.    ;oald
;मेरी दादी बहुत अतृप्त हो गई है जैसे -जैसे वह बूढी हुई.
(defrule demand5
(declare (salience 100))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id awqpwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  demanding.clp  	demand5   "  ?id "  awqpwa )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_demand1
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 boss|manager)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id awyaXika_kAma_kI_apekRA_karane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " demanding.clp   sub_samA_demand1   "   ?id " awyaXika_kAma_kI_apekRA_karane_vAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_demand1
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 boss|manager)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id awyaXika_kAma_kI_apekRA_karane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " demanding.clp   obj_samA_demand1   "   ?id " awyaXika_kAma_kI_apekRA_karane_vAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_demand2
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 challenge)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id muSkila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " demanding.clp   sub_samA_demand2   "   ?id " muSkila )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_demand2
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 challenge)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id muSkila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " demanding.clp   obj_samA_demand2   "   ?id " muSkila )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_demand4
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(subject-subject_samAnAXikaraNa ?id2 ?id3)
(id-root ?id3 medical)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xakRawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " demanding.clp   sub_samA_demand4   "   ?id " xakRawApUrNa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_demand4
(declare (salience 5000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id demanding )
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(object-object_samAnAXikaraNa ?id2 ?id3)
(id-root ?id3 medical)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xakRawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng " ?*wsd_dir* " demanding.clp   obj_samA_demand4   "   ?id " xakRawApUrNa )" crlf))
)
