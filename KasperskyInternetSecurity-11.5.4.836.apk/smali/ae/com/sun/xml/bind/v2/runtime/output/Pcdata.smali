.class public abstract Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;
.super Ljava/lang/Object;
.source "Pcdata.java"

# interfaces
.implements Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract writeTo(Lae/com/sun/xml/bind/v2/runtime/output/UTF8XmlOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeTo([CI)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "start"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/output/Pcdata;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 87
    return-void
.end method
