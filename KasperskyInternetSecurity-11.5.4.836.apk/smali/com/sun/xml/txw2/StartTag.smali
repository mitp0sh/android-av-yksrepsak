.class Lcom/sun/xml/txw2/StartTag;
.super Lcom/sun/xml/txw2/Content;
.source "StartTag.java"

# interfaces
.implements Lcom/sun/xml/txw2/NamespaceResolver;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final document:Lcom/sun/xml/txw2/Document;

.field private firstAtt:Lcom/sun/xml/txw2/Attribute;

.field private firstNs:Lcom/sun/xml/txw2/NamespaceDecl;

.field private lastAtt:Lcom/sun/xml/txw2/Attribute;

.field private lastNs:Lcom/sun/xml/txw2/NamespaceDecl;

.field private final localName:Ljava/lang/String;

.field private owner:Lcom/sun/xml/txw2/ContainerElement;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sun/xml/txw2/StartTag;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/xml/txw2/StartTag;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/xml/txw2/ContainerElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Lcom/sun/xml/txw2/ContainerElement;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p1, Lcom/sun/xml/txw2/ContainerElement;->document:Lcom/sun/xml/txw2/Document;

    invoke-direct {p0, v0, p2, p3}, Lcom/sun/xml/txw2/StartTag;-><init>(Lcom/sun/xml/txw2/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/sun/xml/txw2/StartTag;->owner:Lcom/sun/xml/txw2/ContainerElement;

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/txw2/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "document"    # Lcom/sun/xml/txw2/Document;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sun/xml/txw2/Content;-><init>()V

    .line 96
    sget-boolean v0, Lcom/sun/xml/txw2/StartTag;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_0
    sget-boolean v0, Lcom/sun/xml/txw2/StartTag;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_1
    iput-object p2, p0, Lcom/sun/xml/txw2/StartTag;->uri:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/sun/xml/txw2/StartTag;->localName:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/sun/xml/txw2/StartTag;->document:Lcom/sun/xml/txw2/Document;

    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/sun/xml/txw2/StartTag;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/txw2/NamespaceDecl;

    .line 107
    return-void
.end method

.method private checkWritable()V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/sun/xml/txw2/StartTag;->isWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The start tag of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/xml/txw2/StartTag;->localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already been written. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "If you need out of order writing, see the TypedXmlWriter.block method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method accept(Lcom/sun/xml/txw2/ContentVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lcom/sun/xml/txw2/ContentVisitor;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sun/xml/txw2/StartTag;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/xml/txw2/StartTag;->localName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/xml/txw2/StartTag;->firstAtt:Lcom/sun/xml/txw2/Attribute;

    iget-object v3, p0, Lcom/sun/xml/txw2/StartTag;->firstNs:Lcom/sun/xml/txw2/NamespaceDecl;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sun/xml/txw2/ContentVisitor;->onStartTag(Ljava/lang/String;Ljava/lang/String;Lcom/sun/xml/txw2/Attribute;Lcom/sun/xml/txw2/NamespaceDecl;)V

    .line 254
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/sun/xml/txw2/StartTag;->checkWritable()V

    .line 114
    iget-object v0, p0, Lcom/sun/xml/txw2/StartTag;->firstAtt:Lcom/sun/xml/txw2/Attribute;

    .local v0, "a":Lcom/sun/xml/txw2/Attribute;
    :goto_0
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1, p2}, Lcom/sun/xml/txw2/Attribute;->hasName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    if-nez v0, :cond_3

    .line 122
    new-instance v0, Lcom/sun/xml/txw2/Attribute;

    .end local v0    # "a":Lcom/sun/xml/txw2/Attribute;
    invoke-direct {v0, p1, p2}, Lcom/sun/xml/txw2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .restart local v0    # "a":Lcom/sun/xml/txw2/Attribute;
    iget-object v1, p0, Lcom/sun/xml/txw2/StartTag;->lastAtt:Lcom/sun/xml/txw2/Attribute;

    if-nez v1, :cond_4

    .line 124
    sget-boolean v1, Lcom/sun/xml/txw2/StartTag;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sun/xml/txw2/StartTag;->firstAtt:Lcom/sun/xml/txw2/Attribute;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 114
    :cond_1
    iget-object v0, v0, Lcom/sun/xml/txw2/Attribute;->next:Lcom/sun/xml/txw2/Attribute;

    goto :goto_0

    .line 125
    :cond_2
    iput-object v0, p0, Lcom/sun/xml/txw2/StartTag;->lastAtt:Lcom/sun/xml/txw2/Attribute;

    iput-object v0, p0, Lcom/sun/xml/txw2/StartTag;->firstAtt:Lcom/sun/xml/txw2/Attribute;

    .line 131
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 132
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sun/xml/txw2/StartTag;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/txw2/NamespaceDecl;

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/sun/xml/txw2/StartTag;->document:Lcom/sun/xml/txw2/Document;

    iget-object v2, v0, Lcom/sun/xml/txw2/Attribute;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p0, v2}, Lcom/sun/xml/txw2/Document;->writeValue(Ljava/lang/Object;Lcom/sun/xml/txw2/NamespaceResolver;Ljava/lang/StringBuilder;)V

    .line 136
    return-void

    .line 127
    :cond_4
    sget-boolean v1, Lcom/sun/xml/txw2/StartTag;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sun/xml/txw2/StartTag;->firstAtt:Lcom/sun/xml/txw2/Attribute;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 128
    :cond_5
    iget-object v1, p0, Lcom/sun/xml/txw2/StartTag;->lastAtt:Lcom/sun/xml/txw2/Attribute;

    iput-object v0, v1, Lcom/sun/xml/txw2/Attribute;->next:Lcom/sun/xml/txw2/Attribute;

    .line 129
    iput-object v0, p0, Lcom/sun/xml/txw2/StartTag;->lastAtt:Lcom/sun/xml/txw2/Attribute;

    goto :goto_1
.end method

.method public addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/txw2/NamespaceDecl;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "requirePrefix"    # Z

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sun/xml/txw2/StartTag;->checkWritable()V

    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 162
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 163
    if-eqz p3, :cond_1

    .line 164
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The empty namespace cannot have a non-empty prefix"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The empty namespace can be only bound to the empty prefix"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_2
    const-string p2, ""

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/sun/xml/txw2/StartTag;->firstNs:Lcom/sun/xml/txw2/NamespaceDecl;

    .local v0, "n":Lcom/sun/xml/txw2/NamespaceDecl;
    :goto_0
    if-eqz v0, :cond_8

    .line 172
    iget-object v2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->uri:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 173
    if-nez p2, :cond_4

    .line 175
    iget-boolean v2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->requirePrefix:Z

    or-int/2addr v2, p3

    iput-boolean v2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->requirePrefix:Z

    .line 204
    .end local v0    # "n":Lcom/sun/xml/txw2/NamespaceDecl;
    :goto_1
    return-object v0

    .line 178
    .restart local v0    # "n":Lcom/sun/xml/txw2/NamespaceDecl;
    :cond_4
    iget-object v2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 180
    iput-object p2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    .line 181
    iget-boolean v2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->requirePrefix:Z

    or-int/2addr v2, p3

    iput-boolean v2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->requirePrefix:Z

    goto :goto_1

    .line 184
    :cond_5
    iget-object v2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 186
    iget-boolean v2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->requirePrefix:Z

    or-int/2addr v2, p3

    iput-boolean v2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->requirePrefix:Z

    goto :goto_1

    .line 190
    :cond_6
    if-eqz p2, :cond_7

    iget-object v2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 191
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prefix \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is already bound to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/xml/txw2/NamespaceDecl;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_7
    iget-object v0, v0, Lcom/sun/xml/txw2/NamespaceDecl;->next:Lcom/sun/xml/txw2/NamespaceDecl;

    goto :goto_0

    .line 195
    :cond_8
    new-instance v1, Lcom/sun/xml/txw2/NamespaceDecl;

    iget-object v2, p0, Lcom/sun/xml/txw2/StartTag;->document:Lcom/sun/xml/txw2/Document;

    invoke-virtual {v2}, Lcom/sun/xml/txw2/Document;->assignNewId()C

    move-result v2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/sun/xml/txw2/NamespaceDecl;-><init>(CLjava/lang/String;Ljava/lang/String;Z)V

    .line 196
    .local v1, "ns":Lcom/sun/xml/txw2/NamespaceDecl;
    iget-object v2, p0, Lcom/sun/xml/txw2/StartTag;->lastNs:Lcom/sun/xml/txw2/NamespaceDecl;

    if-nez v2, :cond_a

    .line 197
    sget-boolean v2, Lcom/sun/xml/txw2/StartTag;->$assertionsDisabled:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sun/xml/txw2/StartTag;->firstNs:Lcom/sun/xml/txw2/NamespaceDecl;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 198
    :cond_9
    iput-object v1, p0, Lcom/sun/xml/txw2/StartTag;->lastNs:Lcom/sun/xml/txw2/NamespaceDecl;

    iput-object v1, p0, Lcom/sun/xml/txw2/StartTag;->firstNs:Lcom/sun/xml/txw2/NamespaceDecl;

    :goto_2
    move-object v0, v1

    .line 204
    goto :goto_1

    .line 200
    :cond_a
    sget-boolean v2, Lcom/sun/xml/txw2/StartTag;->$assertionsDisabled:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/sun/xml/txw2/StartTag;->firstNs:Lcom/sun/xml/txw2/NamespaceDecl;

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 201
    :cond_b
    iget-object v2, p0, Lcom/sun/xml/txw2/StartTag;->lastNs:Lcom/sun/xml/txw2/NamespaceDecl;

    iput-object v1, v2, Lcom/sun/xml/txw2/NamespaceDecl;->next:Lcom/sun/xml/txw2/NamespaceDecl;

    .line 202
    iput-object v1, p0, Lcom/sun/xml/txw2/StartTag;->lastNs:Lcom/sun/xml/txw2/NamespaceDecl;

    goto :goto_2
.end method

.method concludesPendingStartTag()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "nsUri"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/sun/xml/txw2/StartTag;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/txw2/NamespaceDecl;

    move-result-object v0

    .line 258
    .local v0, "ns":Lcom/sun/xml/txw2/NamespaceDecl;
    iget-object v1, v0, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, v0, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    .line 261
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/sun/xml/txw2/NamespaceDecl;->dummyPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method isReadyToCommit()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lcom/sun/xml/txw2/StartTag;->owner:Lcom/sun/xml/txw2/ContainerElement;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/xml/txw2/StartTag;->owner:Lcom/sun/xml/txw2/ContainerElement;

    invoke-virtual {v2}, Lcom/sun/xml/txw2/ContainerElement;->isBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/sun/xml/txw2/StartTag;->getNext()Lcom/sun/xml/txw2/Content;

    move-result-object v0

    .local v0, "c":Lcom/sun/xml/txw2/Content;
    :goto_1
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/sun/xml/txw2/Content;->concludesPendingStartTag()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    const/4 v1, 0x1

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v0}, Lcom/sun/xml/txw2/Content;->getNext()Lcom/sun/xml/txw2/Content;

    move-result-object v0

    goto :goto_1
.end method

.method isWritten()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sun/xml/txw2/StartTag;->uri:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public written()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    iput-object v1, p0, Lcom/sun/xml/txw2/StartTag;->lastAtt:Lcom/sun/xml/txw2/Attribute;

    iput-object v1, p0, Lcom/sun/xml/txw2/StartTag;->firstAtt:Lcom/sun/xml/txw2/Attribute;

    .line 241
    iput-object v1, p0, Lcom/sun/xml/txw2/StartTag;->uri:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/sun/xml/txw2/StartTag;->owner:Lcom/sun/xml/txw2/ContainerElement;

    if-eqz v0, :cond_1

    .line 243
    sget-boolean v0, Lcom/sun/xml/txw2/StartTag;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/xml/txw2/StartTag;->owner:Lcom/sun/xml/txw2/ContainerElement;

    iget-object v0, v0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/txw2/StartTag;->owner:Lcom/sun/xml/txw2/ContainerElement;

    iput-object v1, v0, Lcom/sun/xml/txw2/ContainerElement;->startTag:Lcom/sun/xml/txw2/StartTag;

    .line 246
    :cond_1
    return-void
.end method
