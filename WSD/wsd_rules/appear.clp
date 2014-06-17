
;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################



;@@@ 
;Both women will be appearing before magistrates later this week.[cambridge]
;दोनों औरतें इस हफ्ते के अंत में  मजिस्ट्रेट के सामने पेश होंगी .
(defrule appear1
(declare(salience 3800))
(id-root ?id appear)
?mng <-(meaning_to_be_decided ?id)
(or
(kriyA-as_saMbanXI ?id ?id1)
(kriyA-before_saMbanXI ?id ?id1)
(kriyA-on_saMbanXI ?id ?id1)
(kriyA-at_saMbanXI ?id ?id1)
(kriyA-in_saMbanXI ?id ?id1)
)
(id-root ?id1 court|charge|magistrate|witness)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peSa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appear.clp 	appear1   "  ?id "  peSa_ho )" crlf))
)

;@@@
; His new book will be appearing in the spring.[oald]
;उसकी नयी किताब स्प्रिगं में प्रकाशित होगी
(defrule appear2
(declare(salience 3600))
(id-root ?id appear)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI ?id ?id1)
(kriyA-subject ?id ?id2)
(not(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appear.clp 	appear2   "  ?id "  prakASiwa_ho )" crlf))
)

;@@@
;He suddenly appeared in the doorway.[cambridge]
;वह अचानक दरवाजे के रास्ते मे दिखा.
;We'd been in the house a month when dark stains started appearing on the wall.[cambridge]
;हमे घर में एक महीने ही थे जब दीवार पर काले धब्बे दिखाई देने लगे थे .
(defrule appear3
(declare(salience 3400))
(id-root ?id appear)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-in_saMbanXI  ?id ?id1)(kriyA-on_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appear.clp 	appear3   "  ?id "  xiKa )" crlf))
)

;@@@
;If she hasn't appeared by ten o'clock I'm going without her.[cambridge]
;अगर वह दस बजे तक नहीं आयी तो मैं उसके बिना ही चला जाऊँगा.
(defrule appear4
(declare(salience 3000))
(id-root ?id appear)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appear.clp 	appear4   "  ?id "  A )" crlf))
)

;@@@
;There appears to be some mistake.[cambridge]
;कुछ गलती लग रहीं हैं
;Things aren't always what they appear to be .[cambridge]
(defrule appear5
(declare(salience 3000))
(id-root ?id appear)
?mng <-(meaning_to_be_decided ?id)
(or
(kriyA-kriyArWa_kriyA  ?id ?id1)
(kriyA-kqxanwa_karma  ?id ?id1)
)
(to-infinitive  ? ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appear.clp 	appear5   "  ?id "  laga )" crlf))
)


;@@@
;It appears that she left the party alone.[cambridge]
;ऐसा लगता है कि वह अकेले ही पार्टी छोड़ कर चली गयी.
(defrule appear6
(declare(salience 3000))
(id-root ?id appear)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkya_viBakwi  ?id1 ?id2)
(kriyA-vAkyakarma  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appear.clp 	appear6   "  ?id "  laga )" crlf))
)

;@@@
;Ms Hawley was appearing for the defence.[cambridge]
;श्रीमती हवेल्य बचाव पक्ष कीं तरफ से प्रतिनिधित्व करेंगी .
(defrule appear7
(declare(salience 3000))
(id-root ?id appear)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiniXiwva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appear.clp 	appear7   "  ?id "  prawiniXiwva_kara )" crlf))
)


;@@@
;Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-dec-2013
;As you appeared on earth for our good, so let me always desire the good of others.[gyananidhi]
;जैसे आप दूसरों के हित के लिए पृथ्वी पर प्रकट हुयी हैं, वैसे मैं भी सदा दूसरों के हित को ध्यान में रखूं
(defrule appear8
(declare(salience 4000))
(id-root ?id appear)
?mng <-(meaning_to_be_decided ?id)
(or
(and(kriyA-on_saMbanXI  ?id ?id1)(id-root ?id1 earth))
(and(kriyA-for_saMbanXI  ?id ?id1)(id-root ?id1 good))
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakata_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appear.clp 	appear8   "  ?id "  prakata_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 10-Jan-2013
;He applied to the University authorities next year for permission to appear again at the PRS Examination in these three Arts subjects.
;उन्होंने अगले वर्ष विश्वविद्यालय के अधिकारियों को कला संकाय के इस तीन विषयों में फिर से परीक्षा देने की अनुमति के लिए आवेदन दिया।
(defrule appear9
(declare(salience 4000))
(id-root ?id appear)
?mng <-(meaning_to_be_decided ?id)
(or
(kriyA-at_saMbanXI  ?id ?id1)(kriyA-in_saMbanXI  ?id ?id1))
(id-root ?id1 examination)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appear.clp 	appear9   "  ?id "  bETa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24/03/2014
;Of these the weak and strong forces appear in domains that do not concern us here.[ncert]
;इनमें दुर्बल तथा प्रबल बल ऐसे प्रभाव क्षेत्र में प्रकट होते हैं, जिनका यहां हमसे सम्बन्ध नहीं है.
(defrule appear10
(declare(salience 4000))
(id-root ?id appear)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 force)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakata_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appear.clp 	appear10   "  ?id "  prakata_ho )" crlf))
)



;***************************************** DEFAULT RULE **********************************************************


;@@@
(defrule appear0
(declare(salience 0))
(id-root ?id appear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appear.clp 	appear0   "  ?id "  xiKa )" crlf))
)

;**************************************************************** EXAMPLES ******************************************************************

;His new book will be appearing in the spring.
;It was too late to prevent the story from appearing in the national newspapers.
;These allegations appear in a forthcoming documentary.
;He suddenly appeared in the doorway.
;We'd been in the house a month when dark stains started appearing on the wall.
;His name appears in the film credits for lighting.
;If she hasn't appeared by ten o'clock I'm going without her.
;The film, currently in the States, will be appearing on our screens later this year.
;I've noticed that smaller cars are starting to appear again.
;Both women will be appearing before magistrates later this week.
;You've got to appear calm in an interview even if you're terrified underneath.
;To people who don't know him he probably appears to be rather unfriendly.
;Things aren't always what they appear to be .
;She appears to actually like the man, which I find incredible.
;There appears to be some mistake.
;It appears that she left the party alone.
;It appears to me that we need to make some changes.
;Dave Gilmore is currently appearing as Widow Twanky in the Arts Theatre's production of "Puss in Boots".
;She appears briefly in the new Bond film.
;Ms Hawley was appearing for the defence.
;It was his first appearance on television/television appearance as president.
;She will be making a public appearance, signing copies of her latest novel.
;This was the defendant's third court appearance for the same offence.
;He made his first stage/TV appearance at the age of six.
;I didn't really want to go to the party, but I thought I'd better put in an appearance.
