;# Copyright (C) 2013-2014 Jagrati Singh (Banasthali University)
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
;##############################################################################3333
;@@@ Added by Jagrati
;This model has a few extra fittings, but the two cars are substantially the same.   [Cambridge_Advanced_Learner]
;इस मॉडल में कुछ अतिरिक्त उपकरण है, लेकिन दो कारें मूल  रूप से समान हैं. 
(defrule substantially0
(declare (salience 5000))
(id-root ?id substantially)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(viSeRya-viSeRaka  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  substantially.clp 	substantially0   "  ?id "mUla_rUpa_se )" crlf))
)

;@@@ Added by Jagrati
;.................Default Rule...........
;The targets of the First and the Second Plan were substantially achieved . [ Gyanaidhi Search Link]
;प्रथम और दूसरी योजना के लक्ष्य काफी हद तक पूरे हो गये थे |
(defrule substantially1
(declare (salience 0))
(id-root ?id substantially)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPZI_haxa_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  substantially.clp 	substantially1   "  ?id "kAPZI_haxa_waka )" crlf))
)
