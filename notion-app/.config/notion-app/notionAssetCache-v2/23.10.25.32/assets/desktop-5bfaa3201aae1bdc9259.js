"use strict";(self.webpackChunknotion_next=self.webpackChunknotion_next||[]).push([[380],{60951:(e,t,a)=>{a.r(t),a.d(t,{PushNotification:()=>g});a(41817);var o=a(96486),c=a.n(o),r=a(40902),s=a(66897),l=a(99036),i=a(55061),n=a(6287),d=a(13493),m=a(70279),u=a(70203),p=a(44805),b=a(64002);function g(e){const{activity:t,getRecordValue:a,baseURL:o,userTimeZone:g,intl:f}=e,_=(0,i.P6)({...e}),y=(0,i.XW)(_,f),N=(0,i.oP)({...e,intl:f}),k=(0,i.iR)({...e,intl:f}),J=(0,i.rn)({...e,intl:f});switch(t.type){case"top-level-block-created":return{subject:f.formatMessage(i.qJ.topLevelBlockCreated,{userName:y,targetName:N,spaceName:J})};case"top-level-block-deleted":return{subject:f.formatMessage(i.qJ.topLevelBlockDeleted,{userName:y,targetName:N,spaceName:J})};case"collection-row-created":return{subject:f.formatMessage(i.qJ.collectionRowCreated,{userName:y,targetName:N,collectionName:k})};case"collection-row-deleted":return{subject:f.formatMessage(i.qJ.collectionRowDeleted,{userName:y,targetName:N,collectionName:k})};case"block-edited":{let s;if(t.edits){const d=t.edits[0];if("block-changed"===d.type){const t=d.block_data.after.block_value;if("page"===t.type&&t.parent_table===n.v){const t=d.block_schema||l.Kc(f),o=r.OS({before:d.block_data.before.block_value,after:d.block_data.after.block_value,schema:t}).filter((e=>{const a=t[e];return a&&"formula"!==a.type})).map((o=>{const c=t[o],r=c?c.name:void 0,s=(0,i.Wy)({intl:f,property:o,schema:t,block:d.block_data.after.block_value,getRecordValue:a,userTimeZone:e.userTimeZone,baseURL:e.baseURL})||f.formatMessage(i.qJ.emptyBlockEditedProperty);return f.formatMessage(i.qJ.propertyNameAndValueEdited,{propertyName:r,propertyValue:s})})),n=r.B9({before:d.block_data.before.block_value,after:d.block_data.after.block_value}),m=c().compact(n.map((e=>{const t=(0,i._u)({formatProperty:e,intl:f}),o=(0,i.W9)({formatProperty:e,intl:f,block:d.block_data.after.block_value,getRecordValue:a});if(t&&o)return f.formatMessage(i.qJ.propertyNameAndValueEdited,{propertyName:t,propertyValue:o})})));s=f.formatList(o.concat(m),{type:"conjunction",style:"narrow"})}else s=(0,i._2)({intl:f,blockValue:t,getRecordValue:a,baseURL:o,userTimeZone:g})}else if("block-created"===d.type){const e=d.block_data.block_value;s=(0,i._2)({intl:f,blockValue:e,getRecordValue:a,baseURL:o,userTimeZone:g})}else if("block-deleted"===d.type){const e=d.block_data.block_value,t=(0,i._2)({intl:f,blockValue:e,getRecordValue:a,baseURL:o,userTimeZone:g});s=f.formatMessage(i.qJ.blockDeletedEditBody,{renderedBlock:t})}}return{subject:f.formatMessage(i.qJ.blockEditedNotification,{userName:y,blockName:N}),body:s}}case"permissions-edited":return{subject:f.formatMessage(i.qJ.userEditedPermissionsFor,{userName:y,targetName:N}),body:(0,i.gt)({intl:f,activity:t,getRecordValue:a,userTimeZone:e.userTimeZone})};case"user-mentioned":return{subject:f.formatMessage(i.qJ.userMentionedIn,{userName:y,targetName:N}),body:(0,i.kU)({intl:f,getRecordValue:a,baseURL:o,userTimeZone:e.userTimeZone,blockId:t.mentioned_block_id,property:t.mentioned_property})};case"commented":{let o;if(t.edits){const c=t.edits[0];if("comment-created"===c.type){const t=a({table:m.x_,id:c.comment_id,spaceId:c.space_id}),r=c.comment_data||t;r&&(o="💬 ".concat(p.Xh({intl:f,textValue:r.text,getRecordValue:e.getRecordValue,userTimeZone:e.userTimeZone})))}else if("comment-changed"===c.type)o="💬 ".concat(p.Xh({intl:f,textValue:c.comment_data.after.text,getRecordValue:e.getRecordValue,userTimeZone:e.userTimeZone}));else{const t=a({table:m.x_,id:c.comment_id,spaceId:c.space_id}),r=c.comment_data||t;if(r){const t=p.Xh({intl:f,textValue:r.text,getRecordValue:e.getRecordValue,userTimeZone:e.userTimeZone});o=f.formatMessage(i.qJ.userDeletedComment,{commentText:t})}}}return{subject:f.formatMessage(i.qJ.userCommentedSubject,{userName:y,targetName:N}),body:o}}case"user-invited":const q=(0,b.pE)(N),M=q.length>0?q:f.formatMessage(i.qJ.defaultPageName);if(t.permission_group_id)return{subject:f.formatMessage(i.qJ.userAddedToSpace,{userName:y,workspaceName:M})};return{subject:0===_.filter(s.uC).length?f.formatMessage(i.qJ.userInvitedToSpaceByBot,{workspaceName:M}):f.formatMessage(i.qJ.userInvitedToSpace,{userName:y,workspaceName:M})};case"collection-edited":{let e,a=f.formatMessage(i.qJ.userEditedCollectionSubject,{userName:y,collectionName:N});if(t.edits){const o=t.edits[0];if("collection-changed"===o.type&&o.collection_data){const t=o.collection_data.after?o.collection_data.after.description:void 0,c=o.collection_data.before?o.collection_data.before.description:void 0;c&&!t?a=f.formatMessage(i.qJ.collectionDescriptionDeleted,{userName:y,collectionName:N}):!c&&t?(a=f.formatMessage(i.qJ.collectionDescriptionCreated,{userName:y,collectionName:N}),e=u.Jc(t)):c&&t&&r.Dn(c,t)&&(e=u.Jc(t))}else if("collection-created"===o.type&&o.collection_data){const t=o.collection_data.description;t&&(a=f.formatMessage(i.qJ.userCreatedCollectionSubject,{userName:y,collectionName:N}),e=u.Jc(t))}}return{subject:a,body:e}}case"collection-view-edited":const v=e.getRecordValue({table:d.n,id:t.collection_view_id,spaceId:t.space_id}),j=v&&v.name||f.formatMessage(i.qJ.untitledCollectionView);return{subject:f.formatMessage(i.qJ.collectionViewEditedSubject,{userName:y,collectionViewName:j,collectionName:N})};case"collection-property-edited":const R=t.edits&&t.edits[0],V=R&&("collection-property-changed"===R.type?R.collection_property_data.after.name:R.collection_property_data.name)||f.formatMessage(i.qJ.collectionPropertyEditedUnknown);return t.collection_property_id,{subject:f.formatMessage(i.qJ.collectionPropertyEditedSubject,{userName:y,propertyType:V,collectionName:N})};case"reminder":return{subject:f.formatMessage(i.qJ.reminderSubject,{pageName:N}),body:(0,i.kU)({getRecordValue:a,baseURL:o,userTimeZone:e.userTimeZone,blockId:t.reminder_block_id,property:t.reminder_property,intl:f})};case"permission-group-edited":return{subject:(0,i.pF)({activity:t,intl:f,userName:y,targetName:N})};case"page-locked":case"page-unlocked":return{subject:"page-locked"===t.type?f.formatMessage(i.qJ.pageLockedActivity,{userName:y,pageName:N}):f.formatMessage(i.qJ.pageUnlockedActivity,{userName:y,pageName:N})};case"email-edited":return{subject:f.formatMessage(i.qJ.emailEditedActivity,{userName:y})};case"access-requested":return{subject:f.formatMessage(i.qJ.accessRequestedSubject,{userName:y,pageName:N})};case"page-deleted":return{subject:f.formatMessage(i.qJ.pageDeletedActivity,{userName:y})};case"page-restored":return{subject:f.formatMessage(i.qJ.pageRestoredActivity,{userName:y})};case"page-permanently-deleted":return{subject:f.formatMessage(i.qJ.pagePermanentlyDeletedActivity,{userName:y})}}}}}]);