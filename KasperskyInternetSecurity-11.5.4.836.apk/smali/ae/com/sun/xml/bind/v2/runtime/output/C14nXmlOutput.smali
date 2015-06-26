.class public Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;
.super Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
.source "C14nXmlOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;,
        Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;
    }
.end annotation


# instance fields
.field private len:I

.field private final namedAttributesAreOrdered:Z

.field private nsBuf:[I

.field private final otherAttributes:Lcom/sun/istack/FinalArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/istack/FinalArrayList",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;ZLae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "localNames"    # [Lae/com/sun/xml/bind/v2/runtime/output/Encoded;
    .param p3, "namedAttributesAreOrdered"    # Z
    .param p4, "escapeHandler"    # Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    .prologue
    const/16 v2, 0x8

    .line 62
    invoke-direct {p0, p1, p2, p4}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;-><init>(Ljava/io/OutputStream;[Lae/com/sun/xml/bind/v2/runtime/output/Encoded;Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;)V

    .line 74
    new-array v1, v2, [Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    .line 80
    new-array v1, v2, [I

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsBuf:[I

    .line 89
    new-instance v1, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v1}, Lcom/sun/istack/FinalArrayList;-><init>()V

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->otherAttributes:Lcom/sun/istack/FinalArrayList;

    .line 63
    iput-boolean p3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->namedAttributesAreOrdered:Z

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    invoke-direct {v2, p0}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;-><init>(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;)V

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic access$001(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public attribute(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # I
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->otherAttributes:Lcom/sun/istack/FinalArrayList;

    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;

    invoke-direct {v1, p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;-><init>(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public attribute(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 153
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    array-length v3, v3

    iget v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    if-ne v3, v4, :cond_1

    .line 155
    iget v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    mul-int/lit8 v1, v3, 0x2

    .line 156
    .local v1, "newLen":I
    new-array v2, v1, [Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    .line 157
    .local v2, "newbuf":[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    iget v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 159
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    new-instance v4, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    invoke-direct {v4, p0}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;-><init>(Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;)V

    aput-object v4, v3, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    iput-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    .line 163
    .end local v0    # "i":I
    .end local v1    # "newLen":I
    .end local v2    # "newbuf":[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;
    :cond_1
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    iget v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    aget-object v3, v3, v4

    invoke-virtual {v3, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->set(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public endStartTag()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->otherAttributes:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v3}, Lcom/sun/istack/FinalArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    iget v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    if-eqz v3, :cond_2

    .line 177
    iget-boolean v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->namedAttributesAreOrdered:Z

    if-nez v3, :cond_0

    .line 178
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    iget v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 180
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    if-ge v1, v3, :cond_1

    .line 181
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->write()V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    iput v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    .line 201
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->endStartTag()V

    .line 202
    return-void

    .line 188
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    if-ge v1, v3, :cond_4

    .line 189
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->otherAttributes:Lcom/sun/istack/FinalArrayList;

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->staticAttributes:[Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$StaticAttribute;->toDynamicAttribute()Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 190
    :cond_4
    iput v5, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->len:I

    .line 191
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->otherAttributes:Lcom/sun/istack/FinalArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 194
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->otherAttributes:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v3}, Lcom/sun/istack/FinalArrayList;->size()I

    move-result v2

    .line 195
    .local v2, "size":I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    .line 196
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->otherAttributes:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v3, v1}, Lcom/sun/istack/FinalArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;

    .line 197
    .local v0, "a":Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;
    iget v3, v0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->prefix:I

    iget-object v4, v0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->localName:Ljava/lang/String;

    iget-object v5, v0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;->value:Ljava/lang/String;

    invoke-super {p0, v3, v4, v5}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->attribute(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 199
    .end local v0    # "a":Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput$DynamicAttribute;
    :cond_5
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->otherAttributes:Lcom/sun/istack/FinalArrayList;

    invoke-virtual {v3}, Lcom/sun/istack/FinalArrayList;->clear()V

    goto :goto_1
.end method

.method protected writeNsDecls(I)V
    .locals 8
    .param p1, "base"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getCurrent()Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;

    move-result-object v6

    invoke-virtual {v6}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl$Element;->count()I

    move-result v0

    .line 211
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 238
    :cond_0
    return-void

    .line 214
    :cond_1
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsBuf:[I

    array-length v6, v6

    if-le v0, v6, :cond_2

    .line 215
    new-array v6, v0, [I

    iput-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsBuf:[I

    .line 217
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 218
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsBuf:[I

    add-int v7, p1, v1

    aput v7, v6, v1

    .line 217
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 222
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 223
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 224
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsBuf:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "p":Ljava/lang/String;
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsContext:Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsBuf:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/runtime/output/NamespaceContextImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "q":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4

    .line 228
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsBuf:[I

    aget v5, v6, v2

    .line 229
    .local v5, "t":I
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsBuf:[I

    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsBuf:[I

    aget v7, v7, v1

    aput v7, v6, v2

    .line 230
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsBuf:[I

    aput v5, v6, v1

    .line 223
    .end local v5    # "t":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 222
    .end local v3    # "p":Ljava/lang/String;
    .end local v4    # "q":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    .end local v2    # "j":I
    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_0

    .line 237
    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->nsBuf:[I

    aget v6, v6, v1

    invoke-virtual {p0, v6}, Lae/com/sun/xml/bind/v2/runtime/output/C14nXmlOutput;->writeNsDecl(I)V

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
