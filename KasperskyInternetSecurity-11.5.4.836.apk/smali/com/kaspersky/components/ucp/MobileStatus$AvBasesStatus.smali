.class public final enum Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Actual:Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

.field public static final enum VeryOld:Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

.field private static final synthetic a:[Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    const-string v1, "Actual"

    invoke-direct {v0, v1, v2}, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;->Actual:Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    .line 16
    new-instance v0, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    const-string v1, "VeryOld"

    invoke-direct {v0, v1, v3}, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;->VeryOld:Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    sget-object v1, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;->Actual:Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;->VeryOld:Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;->a:[Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;->a:[Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    invoke-virtual {v0}, [Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/ucp/MobileStatus$AvBasesStatus;

    return-object v0
.end method
