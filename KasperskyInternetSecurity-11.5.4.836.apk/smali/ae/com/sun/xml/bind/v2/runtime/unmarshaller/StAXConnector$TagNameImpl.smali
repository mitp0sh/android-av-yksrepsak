.class final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$TagNameImpl;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
.source "StAXConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TagNameImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;


# direct methods
.method private constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$TagNameImpl;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;

    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$TagNameImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;)V

    return-void
.end method


# virtual methods
.method public getQname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector$TagNameImpl;->this$0:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/StAXConnector;->getCurrentQName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
