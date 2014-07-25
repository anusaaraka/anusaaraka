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


;@@@ Addded by Garima Singh(M.tech-C.S, Banasthali Vidyapith) 15/03/2014
;To remove such ambiguities in determining the number of significant figures the best way is to report every measurement in scientific notation in the power of 10.[ncert]
;सार्थक अङ्कों के निर्धारण में इस प्रकार की सन्दिग्धता को दूर करने के लिए सर्वोत्तम उपाय यह है कि प्रत्येक माप को वैज्ञानिक सङ्केत (10 की घातों के रूप में) में प्रस्तुत किया जाए.
(defrule ambiguity1
(declare (salience 4000))
(id-root ?id ambiguity)
?mng<-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(kriyA-in_saMbanXI  ?kri ?id1)
;(id-word ?kri ambiguity);uncomment if any conflict is found
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanxigXawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ambiguity.clp    ambiguity1   "  ?id "  sanxigXawA )" crlf)
)
)

;@@@ Addded by Garima Singh(M.tech-C.S, Banasthali Vidyapith) 15/03/2014
;A lot of humour depends on ambiguity.[oald]
;अधिकांश हास्य अनेकार्थता पर निर्भर करता है.
(defrule ambiguity0
(declare (salience 0))
(id-root ?id ambiguity)
?mng<-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anekArWawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ambiguity.clp    ambiguity0   "  ?id "  anekArWawA )" crlf)
)
)

