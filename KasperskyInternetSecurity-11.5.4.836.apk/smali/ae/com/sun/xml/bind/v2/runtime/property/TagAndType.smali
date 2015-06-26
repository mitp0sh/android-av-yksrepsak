.class Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;
.super Ljava/lang/Object;
.source "TagAndType.java"


# instance fields
.field final beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

.field final tagName:Lae/com/sun/xml/bind/v2/runtime/Name;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/Name;Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;)V
    .locals 0
    .param p1, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p2, "beanInfo"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;->tagName:Lae/com/sun/xml/bind/v2/runtime/Name;

    .line 58
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/property/TagAndType;->beanInfo:Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    .line 59
    return-void
.end method
