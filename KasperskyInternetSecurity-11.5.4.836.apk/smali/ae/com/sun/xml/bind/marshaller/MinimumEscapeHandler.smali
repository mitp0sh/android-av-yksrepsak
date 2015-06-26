.class public Lae/com/sun/xml/bind/marshaller/MinimumEscapeHandler;
.super Ljava/lang/Object;
.source "MinimumEscapeHandler.java"

# interfaces
.implements Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;


# static fields
.field public static final theInstance:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lae/com/sun/xml/bind/marshaller/MinimumEscapeHandler;

    invoke-direct {v0}, Lae/com/sun/xml/bind/marshaller/MinimumEscapeHandler;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/marshaller/MinimumEscapeHandler;->theInstance:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public escape([CIIZLjava/io/Writer;)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "isAttVal"    # Z
    .param p5, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    add-int v2, p2, p3

    .line 64
    .local v2, "limit":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 65
    aget-char v0, p1, v1

    .line 66
    .local v0, "c":C
    const/16 v3, 0x26

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const/16 v3, 0x22

    if-ne v0, v3, :cond_2

    if-eqz p4, :cond_2

    .line 67
    :cond_0
    if-eq v1, p2, :cond_1

    .line 68
    sub-int v3, v1, p2

    invoke-virtual {p5, p1, p2, v3}, Ljava/io/Writer;->write([CII)V

    .line 69
    :cond_1
    add-int/lit8 p2, v1, 0x1

    .line 70
    aget-char v3, p1, v1

    sparse-switch v3, :sswitch_data_0

    .line 64
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :sswitch_0
    const-string v3, "&amp;"

    invoke-virtual {p5, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :sswitch_1
    const-string v3, "&lt;"

    invoke-virtual {p5, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :sswitch_2
    const-string v3, "&gt;"

    invoke-virtual {p5, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :sswitch_3
    const-string v3, "&quot;"

    invoke-virtual {p5, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    .end local v0    # "c":C
    :cond_3
    if-eq p2, v2, :cond_4

    .line 88
    sub-int v3, v2, p2

    invoke-virtual {p5, p1, p2, v3}, Ljava/io/Writer;->write([CII)V

    .line 89
    :cond_4
    return-void

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method
