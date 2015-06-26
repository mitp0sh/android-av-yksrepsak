.class public Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ProxyLoader;
.source "XsiNilLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Array;,
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader$Single;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;)V
    .locals 1
    .param p1, "defaultLoader"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .prologue
    .line 65
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/ProxyLoader;-><init>()V

    .line 66
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 67
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public getExpectedAttributes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->getExpectedAttributes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedChildElements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;->getExpectedChildElements()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected onNil(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V
    .locals 0
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 102
    return-void
.end method

.method protected selectLoader(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
    .locals 6
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v3, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    const-string v4, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v5, "nil"

    invoke-interface {v3, v4, v5}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 73
    .local v2, "idx":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 74
    iget-object v3, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    invoke-interface {v3, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/com/sun/xml/bind/DatatypeConverterImpl;->_parseBoolean(Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object v0

    .line 76
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;->onNil(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;)V

    .line 78
    iget-object v3, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    invoke-interface {v3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 80
    .local v1, "hasOtherAttributes":Z
    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v3, v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    instance-of v3, v3, Lae/javax/xml/bind/JAXBElement;

    if-nez v3, :cond_2

    .line 81
    :cond_0
    sget-object v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Discarder;->INSTANCE:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 85
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v1    # "hasOtherAttributes":Z
    :goto_1
    return-object v3

    .line 78
    .restart local v0    # "b":Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 85
    .end local v0    # "b":Ljava/lang/Boolean;
    :cond_2
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/XsiNilLoader;->defaultLoader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    goto :goto_1
.end method
