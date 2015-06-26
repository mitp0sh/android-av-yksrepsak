.class public Lae/com/sun/xml/bind/marshaller/DumbEscapeHandler;
.super Ljava/lang/Object;
.source "DumbEscapeHandler.java"

# interfaces
.implements Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;


# static fields
.field public static final theInstance:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lae/com/sun/xml/bind/marshaller/DumbEscapeHandler;

    invoke-direct {v0}, Lae/com/sun/xml/bind/marshaller/DumbEscapeHandler;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/marshaller/DumbEscapeHandler;->theInstance:Lae/com/sun/xml/bind/marshaller/CharacterEscapeHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
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
    add-int v1, p2, p3

    .line 64
    .local v1, "limit":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 65
    aget-char v2, p1, v0

    sparse-switch v2, :sswitch_data_0

    .line 83
    aget-char v2, p1, v0

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    .line 84
    const-string v2, "&#"

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 85
    aget-char v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 86
    const/16 v2, 0x3b

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(I)V

    .line 64
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :sswitch_0
    const-string v2, "&amp;"

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :sswitch_2
    const-string v2, "&gt;"

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :sswitch_3
    if-eqz p4, :cond_0

    .line 77
    const-string v2, "&quot;"

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_0
    const/16 v2, 0x22

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 88
    :cond_1
    aget-char v2, p1, v0

    invoke-virtual {p5, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 92
    :cond_2
    return-void

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method
