.class public final enum Lae/javax/xml/bind/annotation/XmlAccessType;
.super Ljava/lang/Enum;
.source "XmlAccessType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/javax/xml/bind/annotation/XmlAccessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/javax/xml/bind/annotation/XmlAccessType;

.field public static final enum FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;

.field public static final enum NONE:Lae/javax/xml/bind/annotation/XmlAccessType;

.field public static final enum PROPERTY:Lae/javax/xml/bind/annotation/XmlAccessType;

.field public static final enum PUBLIC_MEMBER:Lae/javax/xml/bind/annotation/XmlAccessType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lae/javax/xml/bind/annotation/XmlAccessType;

    const-string v1, "PROPERTY"

    invoke-direct {v0, v1, v2}, Lae/javax/xml/bind/annotation/XmlAccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/javax/xml/bind/annotation/XmlAccessType;->PROPERTY:Lae/javax/xml/bind/annotation/XmlAccessType;

    .line 70
    new-instance v0, Lae/javax/xml/bind/annotation/XmlAccessType;

    const-string v1, "FIELD"

    invoke-direct {v0, v1, v3}, Lae/javax/xml/bind/annotation/XmlAccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;

    .line 79
    new-instance v0, Lae/javax/xml/bind/annotation/XmlAccessType;

    const-string v1, "PUBLIC_MEMBER"

    invoke-direct {v0, v1, v4}, Lae/javax/xml/bind/annotation/XmlAccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/javax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Lae/javax/xml/bind/annotation/XmlAccessType;

    .line 84
    new-instance v0, Lae/javax/xml/bind/annotation/XmlAccessType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lae/javax/xml/bind/annotation/XmlAccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/javax/xml/bind/annotation/XmlAccessType;->NONE:Lae/javax/xml/bind/annotation/XmlAccessType;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lae/javax/xml/bind/annotation/XmlAccessType;

    sget-object v1, Lae/javax/xml/bind/annotation/XmlAccessType;->PROPERTY:Lae/javax/xml/bind/annotation/XmlAccessType;

    aput-object v1, v0, v2

    sget-object v1, Lae/javax/xml/bind/annotation/XmlAccessType;->FIELD:Lae/javax/xml/bind/annotation/XmlAccessType;

    aput-object v1, v0, v3

    sget-object v1, Lae/javax/xml/bind/annotation/XmlAccessType;->PUBLIC_MEMBER:Lae/javax/xml/bind/annotation/XmlAccessType;

    aput-object v1, v0, v4

    sget-object v1, Lae/javax/xml/bind/annotation/XmlAccessType;->NONE:Lae/javax/xml/bind/annotation/XmlAccessType;

    aput-object v1, v0, v5

    sput-object v0, Lae/javax/xml/bind/annotation/XmlAccessType;->$VALUES:[Lae/javax/xml/bind/annotation/XmlAccessType;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lae/javax/xml/bind/annotation/XmlAccessType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lae/javax/xml/bind/annotation/XmlAccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/XmlAccessType;

    return-object v0
.end method

.method public static values()[Lae/javax/xml/bind/annotation/XmlAccessType;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lae/javax/xml/bind/annotation/XmlAccessType;->$VALUES:[Lae/javax/xml/bind/annotation/XmlAccessType;

    invoke-virtual {v0}, [Lae/javax/xml/bind/annotation/XmlAccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/javax/xml/bind/annotation/XmlAccessType;

    return-object v0
.end method
