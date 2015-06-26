.class public final Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Discarder;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "Discarder.java"


# static fields
.field public static final INSTANCE:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Discarder;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Discarder;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Discarder;->INSTANCE:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 58
    return-void
.end method


# virtual methods
.method public childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 1
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 64
    iput-object p0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 65
    return-void
.end method
