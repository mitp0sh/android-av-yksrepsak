.class final Lcom/sun/xml/txw2/ContainerElement;
.super Ljava/lang/Object;
.source "ContainerElement.java"

# interfaces
.implements Lcom/sun/xml/txw2/TypedXmlWriter;
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private blocked:Z

.field final document:Lcom/sun/xml/txw2/Document;

.field final endTag:Lcom/sun/xml/txw2/EndTag;

.field private lastOpenChild:Lcom/sun/xml/txw2/ContainerElement;

.field private nextOpen:Lcom/sun/xml/txw2/ContainerElement;

.field private final nsUri:Ljava/lang/String;

.field private final parent:Lcom/sun/xml/txw2/ContainerElement;

.field private prevOpen:Lcom/sun/xml/txw2/ContainerElement;

.field startTag:Lcom/sun/xml/txw2/StartTag;

.field private tail:Lcom/sun/xml/txw2/Content;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/sun/xml/txw2/ContainerElement;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/xml/txw2/ContainerElement;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/ContainerElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "document"    # Lcom/sun/xml/txw2/Document;
    .param p2, "parent"    # Lcom/sun/xml/txw2/ContainerElement;
    .param p3, "nsUri"    # Ljava/lang/String;
    .param p4, "localName"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/sun/xml/txw2/EndTag;

    invoke-direct {v0}, Lcom/sun/xml/txw2/EndTag;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->endTag:Lcom/sun/xml/txw2/EndTag;

    .line 100
    iput-object p2, p0, Lcom/sun/xml/txw2/ContainerElement;->parent:Lcom/sun/xml/txw2/ContainerElement;

    .line 101
    iput-object p1, p0, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    .line 102
    iput-object p3, p0, Lcom/sun/xml/txw2/ContainerElement;->nsUri:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/sun/xml/txw2/StartTag;

    invoke-direct {v0, p0, p3, p4}, Lcom/sun/xml/txw2/StartTag;-><init>(Lcom/sun/xml/txw2/ContainerElement;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    .line 104
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    iput-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->tail:Lcom/sun/xml/txw2/Content;

    .line 106
    invoke-direct {p0}, Lcom/sun/xml/txw2/ContainerElement;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    invoke-virtual {p1, v0}, Lcom/sun/xml/txw2/Document;->setFirstContent(Lcom/sun/xml/txw2/Content;)V

    .line 108
    :cond_0
    return-void
.end method

.method private _commit(Z)V
    .locals 4
    .param p1, "includingAllPredecessors"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 272
    invoke-direct {p0}, Lcom/sun/xml/txw2/ContainerElement;->isCommitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->endTag:Lcom/sun/xml/txw2/EndTag;

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/ContainerElement;->addChild(Lcom/sun/xml/txw2/Content;)V

    .line 275
    invoke-direct {p0}, Lcom/sun/xml/txw2/ContainerElement;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    new-instance v1, Lcom/sun/xml/txw2/EndDocument;

    invoke-direct {v1}, Lcom/sun/xml/txw2/EndDocument;-><init>()V

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/ContainerElement;->addChild(Lcom/sun/xml/txw2/Content;)V

    .line 277
    :cond_1
    iput-object v3, p0, Lcom/sun/xml/txw2/ContainerElement;->tail:Lcom/sun/xml/txw2/Content;

    .line 280
    if-eqz p1, :cond_3

    .line 281
    move-object v0, p0

    .local v0, "e":Lcom/sun/xml/txw2/ContainerElement;
    :goto_1
    if-eqz v0, :cond_3

    .line 282
    :goto_2
    iget-object v1, v0, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, v0, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    invoke-direct {v1, v2}, Lcom/sun/xml/txw2/ContainerElement;->_commit(Z)V

    goto :goto_2

    .line 281
    :cond_2
    iget-object v0, v0, Lcom/sun/xml/txw2/ContainerElement;->parent:Lcom/sun/xml/txw2/ContainerElement;

    goto :goto_1

    .line 290
    .end local v0    # "e":Lcom/sun/xml/txw2/ContainerElement;
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->lastOpenChild:Lcom/sun/xml/txw2/ContainerElement;

    if-eqz v1, :cond_4

    .line 291
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->lastOpenChild:Lcom/sun/xml/txw2/ContainerElement;

    invoke-direct {v1, v2}, Lcom/sun/xml/txw2/ContainerElement;->_commit(Z)V

    goto :goto_3

    .line 294
    :cond_4
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->parent:Lcom/sun/xml/txw2/ContainerElement;

    if-eqz v1, :cond_9

    .line 295
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->parent:Lcom/sun/xml/txw2/ContainerElement;

    iget-object v1, v1, Lcom/sun/xml/txw2/ContainerElement;->lastOpenChild:Lcom/sun/xml/txw2/ContainerElement;

    if-ne v1, p0, :cond_6

    .line 296
    sget-boolean v1, Lcom/sun/xml/txw2/ContainerElement;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->nextOpen:Lcom/sun/xml/txw2/ContainerElement;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "this must be the last one"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 297
    :cond_5
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->parent:Lcom/sun/xml/txw2/ContainerElement;

    iget-object v2, p0, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    iput-object v2, v1, Lcom/sun/xml/txw2/ContainerElement;->lastOpenChild:Lcom/sun/xml/txw2/ContainerElement;

    .line 302
    :goto_4
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    if-eqz v1, :cond_9

    .line 303
    sget-boolean v1, Lcom/sun/xml/txw2/ContainerElement;->$assertionsDisabled:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    iget-object v1, v1, Lcom/sun/xml/txw2/ContainerElement;->nextOpen:Lcom/sun/xml/txw2/ContainerElement;

    if-eq v1, p0, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 299
    :cond_6
    sget-boolean v1, Lcom/sun/xml/txw2/ContainerElement;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->nextOpen:Lcom/sun/xml/txw2/ContainerElement;

    iget-object v1, v1, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    if-eq v1, p0, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 300
    :cond_7
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->nextOpen:Lcom/sun/xml/txw2/ContainerElement;

    iget-object v2, p0, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    iput-object v2, v1, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    goto :goto_4

    .line 304
    :cond_8
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    iget-object v2, p0, Lcom/sun/xml/txw2/ContainerElement;->nextOpen:Lcom/sun/xml/txw2/ContainerElement;

    iput-object v2, v1, Lcom/sun/xml/txw2/ContainerElement;->nextOpen:Lcom/sun/xml/txw2/ContainerElement;

    .line 308
    :cond_9
    iput-object v3, p0, Lcom/sun/xml/txw2/ContainerElement;->nextOpen:Lcom/sun/xml/txw2/ContainerElement;

    .line 309
    iput-object v3, p0, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    goto/16 :goto_0
.end method

.method private addAttribute(Lcom/sun/xml/txw2/annotation/XmlAttribute;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "xa"    # Lcom/sun/xml/txw2/annotation/XmlAttribute;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 167
    sget-boolean v1, Lcom/sun/xml/txw2/ContainerElement;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/sun/xml/txw2/ContainerElement;->checkStartTag()V

    .line 171
    invoke-interface {p1}, Lcom/sun/xml/txw2/annotation/XmlAttribute;->value()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "localName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/sun/xml/txw2/annotation/XmlAttribute;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 173
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_1
    invoke-interface {p1}, Lcom/sun/xml/txw2/annotation/XmlAttribute;->ns()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lcom/sun/xml/txw2/ContainerElement;->_attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method private addChild(Lcom/sun/xml/txw2/Content;)V
    .locals 2
    .param p1, "child"    # Lcom/sun/xml/txw2/Content;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->tail:Lcom/sun/xml/txw2/Content;

    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    invoke-virtual {v0, v1, p1}, Lcom/sun/xml/txw2/Content;->setNext(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/Content;)V

    .line 259
    iput-object p1, p0, Lcom/sun/xml/txw2/ContainerElement;->tail:Lcom/sun/xml/txw2/Content;

    .line 260
    return-void
.end method

.method private addElement(Lcom/sun/xml/txw2/annotation/XmlElement;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "e"    # Lcom/sun/xml/txw2/annotation/XmlElement;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 187
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    .line 190
    .local v10, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "##default"

    .line 191
    .local v9, "nsUri":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "localName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 195
    invoke-interface/range {p1 .. p1}, Lcom/sun/xml/txw2/annotation/XmlElement;->value()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_0

    .line 196
    invoke-interface/range {p1 .. p1}, Lcom/sun/xml/txw2/annotation/XmlElement;->value()Ljava/lang/String;

    move-result-object v8

    .line 197
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/sun/xml/txw2/annotation/XmlElement;->ns()Ljava/lang/String;

    move-result-object v9

    .line 200
    :cond_1
    const-string v13, "##default"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 202
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 203
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Lcom/sun/xml/txw2/annotation/XmlElement;

    invoke-virtual {v3, v13}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/txw2/annotation/XmlElement;

    .line 204
    .local v4, "ce":Lcom/sun/xml/txw2/annotation/XmlElement;
    if-eqz v4, :cond_2

    .line 205
    invoke-interface {v4}, Lcom/sun/xml/txw2/annotation/XmlElement;->ns()Ljava/lang/String;

    move-result-object v9

    .line 208
    :cond_2
    const-string v13, "##default"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 210
    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sun/xml/txw2/ContainerElement;->getNamespace(Ljava/lang/Package;)Ljava/lang/String;

    move-result-object v9

    .line 215
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ce":Lcom/sun/xml/txw2/annotation/XmlElement;
    :cond_3
    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v10, v13, :cond_7

    .line 218
    const-class v13, Lcom/sun/xml/txw2/annotation/XmlCDATA;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    if-eqz v13, :cond_4

    const/4 v6, 0x1

    .line 220
    .local v6, "isCDATA":Z
    :goto_0
    new-instance v11, Lcom/sun/xml/txw2/StartTag;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    invoke-direct {v11, v13, v9, v8}, Lcom/sun/xml/txw2/StartTag;-><init>(Lcom/sun/xml/txw2/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v11, "st":Lcom/sun/xml/txw2/StartTag;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sun/xml/txw2/ContainerElement;->addChild(Lcom/sun/xml/txw2/Content;)V

    .line 222
    move-object/from16 v2, p3

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_6

    aget-object v1, v2, v5

    .line 224
    .local v1, "arg":Ljava/lang/Object;
    if-eqz v6, :cond_5

    new-instance v12, Lcom/sun/xml/txw2/Cdata;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    invoke-direct {v12, v13, v11, v1}, Lcom/sun/xml/txw2/Cdata;-><init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/Object;)V

    .line 226
    .local v12, "text":Lcom/sun/xml/txw2/Text;
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sun/xml/txw2/ContainerElement;->addChild(Lcom/sun/xml/txw2/Content;)V

    .line 222
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 218
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "arr$":[Ljava/lang/Object;
    .end local v5    # "i$":I
    .end local v6    # "isCDATA":Z
    .end local v7    # "len$":I
    .end local v11    # "st":Lcom/sun/xml/txw2/StartTag;
    .end local v12    # "text":Lcom/sun/xml/txw2/Text;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 225
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "arr$":[Ljava/lang/Object;
    .restart local v5    # "i$":I
    .restart local v6    # "isCDATA":Z
    .restart local v7    # "len$":I
    .restart local v11    # "st":Lcom/sun/xml/txw2/StartTag;
    :cond_5
    new-instance v12, Lcom/sun/xml/txw2/Pcdata;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    invoke-direct {v12, v13, v11, v1}, Lcom/sun/xml/txw2/Pcdata;-><init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/Object;)V

    .restart local v12    # "text":Lcom/sun/xml/txw2/Text;
    goto :goto_2

    .line 228
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v12    # "text":Lcom/sun/xml/txw2/Text;
    :cond_6
    new-instance v13, Lcom/sun/xml/txw2/EndTag;

    invoke-direct {v13}, Lcom/sun/xml/txw2/EndTag;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sun/xml/txw2/ContainerElement;->addChild(Lcom/sun/xml/txw2/Content;)V

    .line 229
    const/4 v13, 0x0

    .line 233
    .end local v2    # "arr$":[Ljava/lang/Object;
    .end local v5    # "i$":I
    .end local v6    # "isCDATA":Z
    .end local v7    # "len$":I
    .end local v11    # "st":Lcom/sun/xml/txw2/StartTag;
    :goto_3
    return-object v13

    .line 231
    :cond_7
    const-class v13, Lcom/sun/xml/txw2/TypedXmlWriter;

    invoke-virtual {v13, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v10}, Lcom/sun/xml/txw2/ContainerElement;->_element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v13

    goto :goto_3

    .line 236
    :cond_8
    new-instance v13, Lcom/sun/xml/txw2/IllegalSignatureException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Illegal return type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sun/xml/txw2/IllegalSignatureException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method private checkStartTag()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "start tag has already been written"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    return-void
.end method

.method private getNamespace(Ljava/lang/Package;)Ljava/lang/String;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/Package;

    .prologue
    .line 243
    if-nez p1, :cond_0

    const-string v1, ""

    .line 251
    :goto_0
    return-object v1

    .line 246
    :cond_0
    const-class v2, Lcom/sun/xml/txw2/annotation/XmlNamespace;

    invoke-virtual {p1, v2}, Ljava/lang/Package;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sun/xml/txw2/annotation/XmlNamespace;

    .line 247
    .local v0, "ns":Lcom/sun/xml/txw2/annotation/XmlNamespace;
    if-eqz v0, :cond_1

    .line 248
    invoke-interface {v0}, Lcom/sun/xml/txw2/annotation/XmlNamespace;->value()Ljava/lang/String;

    move-result-object v1

    .local v1, "nsUri":Ljava/lang/String;
    goto :goto_0

    .line 250
    .end local v1    # "nsUri":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    .restart local v1    # "nsUri":Ljava/lang/String;
    goto :goto_0
.end method

.method private isCommitted()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->tail:Lcom/sun/xml/txw2/Content;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoot()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->parent:Lcom/sun/xml/txw2/ContainerElement;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public _attribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 313
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/xml/txw2/ContainerElement;->_attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public _attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/sun/xml/txw2/ContainerElement;->checkStartTag()V

    .line 318
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/xml/txw2/StartTag;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public _attribute(Ljavax/xml/namespace/QName;Ljava/lang/Object;)V
    .locals 2
    .param p1, "attributeName"    # Ljavax/xml/namespace/QName;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 322
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/sun/xml/txw2/ContainerElement;->_attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    return-void
.end method

.method public _cast(Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "facadeType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/xml/txw2/TypedXmlWriter;

    return-object v0
.end method

.method public _cdata(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 348
    new-instance v0, Lcom/sun/xml/txw2/Cdata;

    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    iget-object v2, p0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/xml/txw2/Cdata;-><init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sun/xml/txw2/ContainerElement;->addChild(Lcom/sun/xml/txw2/Content;)V

    .line 349
    return-void
.end method

.method public _comment(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lcom/sun/xml/txw2/Comment;

    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    iget-object v2, p0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/xml/txw2/Comment;-><init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sun/xml/txw2/ContainerElement;->addChild(Lcom/sun/xml/txw2/Content;)V

    .line 353
    return-void
.end method

.method public _element(Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "contentModel":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/sun/xml/txw2/TXW;->getTagName(Ljava/lang/Class;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/xml/txw2/ContainerElement;->_element(Ljavax/xml/namespace/QName;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v0

    return-object v0
.end method

.method public _element(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "contentModel":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->nsUri:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/xml/txw2/ContainerElement;->_element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v0

    return-object v0
.end method

.method public _element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .locals 2
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 372
    .local p3, "contentModel":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/sun/xml/txw2/ContainerElement;

    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/sun/xml/txw2/ContainerElement;-><init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/ContainerElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .local v0, "child":Lcom/sun/xml/txw2/ContainerElement;
    iget-object v1, v0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    invoke-direct {p0, v1}, Lcom/sun/xml/txw2/ContainerElement;->addChild(Lcom/sun/xml/txw2/Content;)V

    .line 374
    iget-object v1, v0, Lcom/sun/xml/txw2/ContainerElement;->endTag:Lcom/sun/xml/txw2/EndTag;

    iput-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->tail:Lcom/sun/xml/txw2/Content;

    .line 377
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->lastOpenChild:Lcom/sun/xml/txw2/ContainerElement;

    if-eqz v1, :cond_4

    .line 378
    sget-boolean v1, Lcom/sun/xml/txw2/ContainerElement;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->lastOpenChild:Lcom/sun/xml/txw2/ContainerElement;

    iget-object v1, v1, Lcom/sun/xml/txw2/ContainerElement;->parent:Lcom/sun/xml/txw2/ContainerElement;

    if-eq v1, p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 380
    :cond_0
    sget-boolean v1, Lcom/sun/xml/txw2/ContainerElement;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 381
    :cond_1
    sget-boolean v1, Lcom/sun/xml/txw2/ContainerElement;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/sun/xml/txw2/ContainerElement;->nextOpen:Lcom/sun/xml/txw2/ContainerElement;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 382
    :cond_2
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->lastOpenChild:Lcom/sun/xml/txw2/ContainerElement;

    iput-object v1, v0, Lcom/sun/xml/txw2/ContainerElement;->prevOpen:Lcom/sun/xml/txw2/ContainerElement;

    .line 383
    sget-boolean v1, Lcom/sun/xml/txw2/ContainerElement;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->lastOpenChild:Lcom/sun/xml/txw2/ContainerElement;

    iget-object v1, v1, Lcom/sun/xml/txw2/ContainerElement;->nextOpen:Lcom/sun/xml/txw2/ContainerElement;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 384
    :cond_3
    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->lastOpenChild:Lcom/sun/xml/txw2/ContainerElement;

    iput-object v0, v1, Lcom/sun/xml/txw2/ContainerElement;->nextOpen:Lcom/sun/xml/txw2/ContainerElement;

    .line 387
    :cond_4
    iput-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->lastOpenChild:Lcom/sun/xml/txw2/ContainerElement;

    .line 389
    invoke-virtual {v0, p3}, Lcom/sun/xml/txw2/ContainerElement;->_cast(Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v1

    return-object v1
.end method

.method public _element(Ljavax/xml/namespace/QName;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;
    .locals 2
    .param p1, "tagName"    # Ljavax/xml/namespace/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/xml/txw2/TypedXmlWriter;",
            ">(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 360
    .local p2, "contentModel":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/sun/xml/txw2/ContainerElement;->_element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/xml/txw2/TypedXmlWriter;

    move-result-object v0

    return-object v0
.end method

.method public _namespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/xml/txw2/ContainerElement;->_namespace(Ljava/lang/String;Z)V

    .line 327
    return-void
.end method

.method public _namespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 330
    if-nez p2, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/sun/xml/txw2/ContainerElement;->checkStartTag()V

    .line 333
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sun/xml/txw2/StartTag;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/txw2/NamespaceDecl;

    .line 334
    return-void
.end method

.method public _namespace(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "requirePrefix"    # Z

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/sun/xml/txw2/ContainerElement;->checkStartTag()V

    .line 338
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/sun/xml/txw2/StartTag;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/txw2/NamespaceDecl;

    .line 339
    return-void
.end method

.method public _pcdata(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 344
    new-instance v0, Lcom/sun/xml/txw2/Pcdata;

    iget-object v1, p0, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    iget-object v2, p0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    invoke-direct {v0, v1, v2, p1}, Lcom/sun/xml/txw2/Pcdata;-><init>(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sun/xml/txw2/ContainerElement;->addChild(Lcom/sun/xml/txw2/Content;)V

    .line 345
    return-void
.end method

.method public block()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/xml/txw2/ContainerElement;->blocked:Z

    .line 128
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/xml/txw2/ContainerElement;->commit(Z)V

    .line 264
    return-void
.end method

.method public commit(Z)V
    .locals 1
    .param p1, "includingAllPredecessors"    # Z

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/sun/xml/txw2/ContainerElement;->_commit(Z)V

    .line 268
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    invoke-virtual {v0}, Lcom/sun/xml/txw2/Document;->flush()V

    .line 269
    return-void
.end method

.method public getDocument()Lcom/sun/xml/txw2/Document;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/sun/xml/txw2/TypedXmlWriter;

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 134
    :cond_0
    :try_start_0
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 160
    .end local p1    # "proxy":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 135
    .restart local p1    # "proxy":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    throw v4

    .line 140
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-class v4, Lcom/sun/xml/txw2/annotation/XmlAttribute;

    invoke-virtual {p2, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/sun/xml/txw2/annotation/XmlAttribute;

    .line 141
    .local v1, "xa":Lcom/sun/xml/txw2/annotation/XmlAttribute;
    const-class v4, Lcom/sun/xml/txw2/annotation/XmlValue;

    invoke-virtual {p2, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/txw2/annotation/XmlValue;

    .line 142
    .local v3, "xv":Lcom/sun/xml/txw2/annotation/XmlValue;
    const-class v4, Lcom/sun/xml/txw2/annotation/XmlElement;

    invoke-virtual {p2, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sun/xml/txw2/annotation/XmlElement;

    .line 145
    .local v2, "xe":Lcom/sun/xml/txw2/annotation/XmlElement;
    if-eqz v1, :cond_4

    .line 146
    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    .line 147
    :cond_2
    new-instance v4, Lcom/sun/xml/txw2/IllegalAnnotationException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/xml/txw2/IllegalAnnotationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :cond_3
    invoke-direct {p0, v1, p2, p3}, Lcom/sun/xml/txw2/ContainerElement;->addAttribute(Lcom/sun/xml/txw2/annotation/XmlAttribute;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_4
    if-eqz v3, :cond_6

    .line 153
    if-eqz v2, :cond_5

    .line 154
    new-instance v4, Lcom/sun/xml/txw2/IllegalAnnotationException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/xml/txw2/IllegalAnnotationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_5
    invoke-virtual {p0, p3}, Lcom/sun/xml/txw2/ContainerElement;->_pcdata(Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_6
    invoke-direct {p0, v2, p2, p3}, Lcom/sun/xml/txw2/ContainerElement;->addElement(Lcom/sun/xml/txw2/annotation/XmlElement;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method isBlocked()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/sun/xml/txw2/ContainerElement;->blocked:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/xml/txw2/ContainerElement;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
