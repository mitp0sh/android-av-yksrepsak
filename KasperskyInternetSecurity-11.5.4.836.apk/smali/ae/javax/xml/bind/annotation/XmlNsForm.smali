.class public final enum Lae/javax/xml/bind/annotation/XmlNsForm;
.super Ljava/lang/Enum;
.source "XmlNsForm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/javax/xml/bind/annotation/XmlNsForm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/javax/xml/bind/annotation/XmlNsForm;

.field public static final enum QUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

.field public static final enum UNQUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

.field public static final enum UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lae/javax/xml/bind/annotation/XmlNsForm;

    const-string v1, "UNQUALIFIED"

    invoke-direct {v0, v1, v2}, Lae/javax/xml/bind/annotation/XmlNsForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/javax/xml/bind/annotation/XmlNsForm;->UNQUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

    new-instance v0, Lae/javax/xml/bind/annotation/XmlNsForm;

    const-string v1, "QUALIFIED"

    invoke-direct {v0, v1, v3}, Lae/javax/xml/bind/annotation/XmlNsForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/javax/xml/bind/annotation/XmlNsForm;->QUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

    new-instance v0, Lae/javax/xml/bind/annotation/XmlNsForm;

    const-string v1, "UNSET"

    invoke-direct {v0, v1, v4}, Lae/javax/xml/bind/annotation/XmlNsForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/javax/xml/bind/annotation/XmlNsForm;->UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;

    const/4 v0, 0x3

    new-array v0, v0, [Lae/javax/xml/bind/annotation/XmlNsForm;

    sget-object v1, Lae/javax/xml/bind/annotation/XmlNsForm;->UNQUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

    aput-object v1, v0, v2

    sget-object v1, Lae/javax/xml/bind/annotation/XmlNsForm;->QUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

    aput-object v1, v0, v3

    sget-object v1, Lae/javax/xml/bind/annotation/XmlNsForm;->UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;

    aput-object v1, v0, v4

    sput-object v0, Lae/javax/xml/bind/annotation/XmlNsForm;->$VALUES:[Lae/javax/xml/bind/annotation/XmlNsForm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lae/javax/xml/bind/annotation/XmlNsForm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lae/javax/xml/bind/annotation/XmlNsForm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/XmlNsForm;

    return-object v0
.end method

.method public static values()[Lae/javax/xml/bind/annotation/XmlNsForm;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lae/javax/xml/bind/annotation/XmlNsForm;->$VALUES:[Lae/javax/xml/bind/annotation/XmlNsForm;

    invoke-virtual {v0}, [Lae/javax/xml/bind/annotation/XmlNsForm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/javax/xml/bind/annotation/XmlNsForm;

    return-object v0
.end method
