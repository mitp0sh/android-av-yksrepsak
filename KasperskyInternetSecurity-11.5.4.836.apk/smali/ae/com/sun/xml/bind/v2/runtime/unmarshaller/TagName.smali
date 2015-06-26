.class public abstract Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
.super Ljava/lang/Object;
.source "TagName.java"


# instance fields
.field public atts:Lorg/xml/sax/Attributes;

.field public local:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public createQName()Ljavax/xml/namespace/QName;
    .locals 4

    .prologue
    .line 147
    new-instance v0, Ljavax/xml/namespace/QName;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->getQname()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "qname":Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 139
    .local v0, "idx":I
    if-gez v0, :cond_0

    const-string v2, ""

    .line 140
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract getQname()Ljava/lang/String;
.end method

.method public final matches(Lae/com/sun/xml/bind/v2/runtime/Name;)Z
    .locals 2
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;

    .prologue
    .line 107
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->localName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/Name;->nsUri:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
