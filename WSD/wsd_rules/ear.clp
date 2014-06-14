;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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

;@@@ Added by Pramila(Banasthali University) on 21-01-2014
;She has no ear for classic music.      ;shiksharthi
;उसे शास्त्रीय संगीत की कोई परख नहीं है.
;You need a good ear to master the piano.      ;oald
;तुम्हें पियानो में निपुणता प्राप्त करने के लिए एक अच्छी परख की जरूरत है.
(defrule ear0
(declare (salience 5000))
(id-root ?id ear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-for_saMbanXI  ?id ?id1)(saMjFA-to_kqxanwa  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ear.clp 	ear0   "  ?id "  paraKa )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 21-01-2014
;An ear contains seeds.         ;shiksharthi
;बाली में बीज होते हैं.
(defrule ear1
(declare (salience 5000))
(id-root ?id ear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(kriyA-object  ?id1 ?id2)
(id-root ?id2 seed)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ear.clp 	ear1   "  ?id "  bAlI )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 21-01-2014
;An ear of wheat.       ;shiksharthi
;गेहूँ की एक बाली .
(defrule ear2
(declare (salience 5000))
(id-root ?id ear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ear.clp 	ear2   "  ?id "  bAlI )" crlf))
)

;--------------------default rule-------------------------------------------
;@@@ Added by Pramila(Banasthali University) on 21-01-2014
;He whispered a few words in her ear.    ;shiksharthi   
;उसने उसके कान में धीरे से कुछ कहा.
;His ears became red.     ;shiksharthi
;उसके कान लाल हो गए.
(defrule ear3
(declare (salience 4000))
(id-root ?id ear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ear.clp 	ear3   "  ?id "  kAna )" crlf))
)


