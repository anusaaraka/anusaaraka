;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore[6-3-14]
;The manager gave a written undertaking that no one would lose their job. 
;प्रबन्धक ने एक लिखित वचन दिया कि उनका काम कोई भी नहीं खोयेगा. 
(defrule undertaking0
(declare (salience 5000))
(id-root ?id undertaking)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word  =(+ ?id 1) that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vacana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  undertaking.clp 	undertaking0   "  ?id "  vacana )" crlf)))



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[6-3-14]
;The construction of the tunnel is a large and complex undertaking. 
;सुरङ्ग का निर्माण एक बडा और जटिल काम है . 
(defrule undertaking1
(declare (salience 400))
(id-root ?id undertaking)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  undertaking.clp 	undertaking1   "  ?id " kAma )" crlf))
)

;@@@ Added by Prachi Rathore[6-3-14]

(defrule undertaking2
(declare (salience 200))
(id-root ?id undertaking)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  undertaking.clp 	undertaking2   "  ?id " kAma )" crlf))
)
