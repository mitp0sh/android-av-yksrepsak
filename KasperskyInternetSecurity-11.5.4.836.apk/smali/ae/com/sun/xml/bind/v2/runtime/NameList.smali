.class public final Lae/com/sun/xml/bind/v2/runtime/NameList;
.super Ljava/lang/Object;
.source "NameList.java"


# instance fields
.field public final localNames:[Ljava/lang/String;

.field public final namespaceURIs:[Ljava/lang/String;

.field public final nsUriCannotBeDefaulted:[Z

.field public final numberOfAttributeNames:I

.field public final numberOfElementNames:I


# direct methods
.method public constructor <init>([Ljava/lang/String;[Z[Ljava/lang/String;II)V
    .locals 0
    .param p1, "namespaceURIs"    # [Ljava/lang/String;
    .param p2, "nsUriCannotBeDefaulted"    # [Z
    .param p3, "localNames"    # [Ljava/lang/String;
    .param p4, "numberElementNames"    # I
    .param p5, "numberAttributeNames"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/NameList;->namespaceURIs:[Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/NameList;->nsUriCannotBeDefaulted:[Z

    .line 84
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/NameList;->localNames:[Ljava/lang/String;

    .line 85
    iput p4, p0, Lae/com/sun/xml/bind/v2/runtime/NameList;->numberOfElementNames:I

    .line 86
    iput p5, p0, Lae/com/sun/xml/bind/v2/runtime/NameList;->numberOfAttributeNames:I

    .line 87
    return-void
.end method
