.class Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl$1;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "MarshallerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;->write(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/output/XmlOutput;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/MarshallerImpl;

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lorg/xml/sax/helpers/XMLFilterImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method
