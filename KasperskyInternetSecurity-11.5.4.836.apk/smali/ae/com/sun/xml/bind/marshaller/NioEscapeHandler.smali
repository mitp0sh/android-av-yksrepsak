.class public Lae/com/sun/xml/bind/marshaller/NioEscapeHandler;
.super Ljava/lang/Object;
.source "NioEscapeHandler.java"

# interfaces
.implements Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;


# instance fields
.field private final encoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/marshaller/NioEscapeHandler;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 76
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
    .line 79
    add-int v1, p2, p3

    .line 80
    .local v1, "limit":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 81
    aget-char v2, p1, v0

    sparse-switch v2, :sswitch_data_0

    .line 99
    iget-object v2, p0, Lae/com/sun/xml/bind/marshaller/NioEscapeHandler;->encoder:Ljava/nio/charset/CharsetEncoder;

    aget-char v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    aget-char v2, p1, v0

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(I)V

    .line 80
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :sswitch_0
    const-string v2, "&amp;"

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :sswitch_2
    const-string v2, "&gt;"

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :sswitch_3
    if-eqz p4, :cond_0

    .line 93
    const-string v2, "&quot;"

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_0
    const/16 v2, 0x22

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 102
    :cond_1
    const-string v2, "&#"

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    aget-char v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 104
    const/16 v2, 0x3b

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 108
    :cond_2
    return-void

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method
