.class final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
.source "SAXConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TagNameImpl"
.end annotation


# instance fields
.field qname:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$1;

    .prologue
    .line 72
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getQname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/SAXConnector$TagNameImpl;->qname:Ljava/lang/String;

    return-object v0
.end method
