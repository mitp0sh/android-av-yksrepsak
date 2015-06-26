.class public final enum Lae/javax/xml/bind/annotation/XmlAccessOrder;
.super Ljava/lang/Enum;
.source "XmlAccessOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lae/javax/xml/bind/annotation/XmlAccessOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lae/javax/xml/bind/annotation/XmlAccessOrder;

.field public static final enum ALPHABETICAL:Lae/javax/xml/bind/annotation/XmlAccessOrder;

.field public static final enum UNDEFINED:Lae/javax/xml/bind/annotation/XmlAccessOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lae/javax/xml/bind/annotation/XmlAccessOrder;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lae/javax/xml/bind/annotation/XmlAccessOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/javax/xml/bind/annotation/XmlAccessOrder;->UNDEFINED:Lae/javax/xml/bind/annotation/XmlAccessOrder;

    .line 62
    new-instance v0, Lae/javax/xml/bind/annotation/XmlAccessOrder;

    const-string v1, "ALPHABETICAL"

    invoke-direct {v0, v1, v3}, Lae/javax/xml/bind/annotation/XmlAccessOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lae/javax/xml/bind/annotation/XmlAccessOrder;->ALPHABETICAL:Lae/javax/xml/bind/annotation/XmlAccessOrder;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lae/javax/xml/bind/annotation/XmlAccessOrder;

    sget-object v1, Lae/javax/xml/bind/annotation/XmlAccessOrder;->UNDEFINED:Lae/javax/xml/bind/annotation/XmlAccessOrder;

    aput-object v1, v0, v2

    sget-object v1, Lae/javax/xml/bind/annotation/XmlAccessOrder;->ALPHABETICAL:Lae/javax/xml/bind/annotation/XmlAccessOrder;

    aput-object v1, v0, v3

    sput-object v0, Lae/javax/xml/bind/annotation/XmlAccessOrder;->$VALUES:[Lae/javax/xml/bind/annotation/XmlAccessOrder;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lae/javax/xml/bind/annotation/XmlAccessOrder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lae/javax/xml/bind/annotation/XmlAccessOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lae/javax/xml/bind/annotation/XmlAccessOrder;

    return-object v0
.end method

.method public static values()[Lae/javax/xml/bind/annotation/XmlAccessOrder;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lae/javax/xml/bind/annotation/XmlAccessOrder;->$VALUES:[Lae/javax/xml/bind/annotation/XmlAccessOrder;

    invoke-virtual {v0}, [Lae/javax/xml/bind/annotation/XmlAccessOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lae/javax/xml/bind/annotation/XmlAccessOrder;

    return-object v0
.end method
