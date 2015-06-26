.class public final Lae/com/sun/xml/bind/api/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# instance fields
.field public final annotations:[Ljava/lang/annotation/Annotation;

.field public final tagName:Ljavax/xml/namespace/QName;

.field public final type:Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V
    .locals 5
    .param p1, "tagName"    # Ljavax/xml/namespace/QName;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_6

    .line 86
    :cond_0
    const-string v0, ""

    .line 88
    .local v0, "nullArgs":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v0, "tagName"

    .line 89
    :cond_1
    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, ", type"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_2
    if-nez p3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, ", annotations"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_3
    sget-object v1, Lae/com/sun/xml/bind/api/Messages;->ARGUMENT_CANT_BE_NULL:Lae/com/sun/xml/bind/api/Messages;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/api/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lae/com/sun/xml/bind/api/Messages;->ARGUMENT_CANT_BE_NULL:Lae/com/sun/xml/bind/api/Messages;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/api/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_4
    const-string v1, "type"

    goto :goto_0

    .line 90
    :cond_5
    const-string v1, "annotations"

    goto :goto_1

    .line 97
    .end local v0    # "nullArgs":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lae/com/sun/xml/bind/api/TypeReference;->tagName:Ljavax/xml/namespace/QName;

    .line 98
    iput-object p2, p0, Lae/com/sun/xml/bind/api/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 99
    iput-object p3, p0, Lae/com/sun/xml/bind/api/TypeReference;->annotations:[Ljava/lang/annotation/Annotation;

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-ne p0, p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 136
    check-cast v0, Lae/com/sun/xml/bind/api/TypeReference;

    .line 138
    .local v0, "that":Lae/com/sun/xml/bind/api/TypeReference;
    iget-object v3, p0, Lae/com/sun/xml/bind/api/TypeReference;->annotations:[Ljava/lang/annotation/Annotation;

    iget-object v4, v0, Lae/com/sun/xml/bind/api/TypeReference;->annotations:[Ljava/lang/annotation/Annotation;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 139
    :cond_4
    iget-object v3, p0, Lae/com/sun/xml/bind/api/TypeReference;->tagName:Ljavax/xml/namespace/QName;

    iget-object v4, v0, Lae/com/sun/xml/bind/api/TypeReference;->tagName:Ljavax/xml/namespace/QName;

    invoke-virtual {v3, v4}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 140
    :cond_5
    iget-object v3, p0, Lae/com/sun/xml/bind/api/TypeReference;->type:Ljava/lang/reflect/Type;

    iget-object v4, v0, Lae/com/sun/xml/bind/api/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v1, p0, Lae/com/sun/xml/bind/api/TypeReference;->annotations:[Ljava/lang/annotation/Annotation;

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 108
    .local v0, "a":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/annotation/Annotation;

    .line 111
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :goto_1
    return-object v4

    .line 107
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lae/com/sun/xml/bind/api/TypeReference;->tagName:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->hashCode()I

    move-result v0

    .line 148
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lae/com/sun/xml/bind/api/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 149
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lae/com/sun/xml/bind/api/TypeReference;->annotations:[Ljava/lang/annotation/Annotation;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 150
    return v0
.end method

.method public toItemType()Lae/com/sun/xml/bind/api/TypeReference;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    sget-object v1, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    iget-object v2, p0, Lae/com/sun/xml/bind/api/TypeReference;->type:Ljava/lang/reflect/Type;

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v1, v2, v3}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getBaseClass(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 124
    .local v0, "base":Ljava/lang/reflect/Type;
    if-nez v0, :cond_0

    .line 127
    .end local p0    # "this":Lae/com/sun/xml/bind/api/TypeReference;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lae/com/sun/xml/bind/api/TypeReference;
    :cond_0
    new-instance v1, Lae/com/sun/xml/bind/api/TypeReference;

    iget-object v2, p0, Lae/com/sun/xml/bind/api/TypeReference;->tagName:Ljavax/xml/namespace/QName;

    sget-object v3, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-virtual {v3, v0, v4}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getTypeArgument(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v2, v3, v4}, Lae/com/sun/xml/bind/api/TypeReference;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V

    move-object p0, v1

    goto :goto_0
.end method
