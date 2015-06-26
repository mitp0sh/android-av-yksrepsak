.class public Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;
.super Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
.source "IntData.java"


# static fields
.field private static final sizeTable:[I


# instance fields
.field private data:I

.field private length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->sizeTable:[I

    return-void

    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;-><init>()V

    return-void
.end method

.method private static stringSizeOfInt(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "i":I
    :goto_0
    sget-object v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    .line 82
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->length:I

    return v0
.end method

.method public reset(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 68
    iput p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->data:I

    .line 69
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 70
    const/16 v0, 0xb

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->length:I

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->stringSizeOfInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->length:I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->stringSizeOfInt(I)I

    move-result v0

    goto :goto_1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->data:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V
    .locals 1
    .param p1, "output"    # Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/IntData;->data:I

    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;->text(I)V

    .line 104
    return-void
.end method
