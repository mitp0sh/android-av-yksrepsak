.class final Luv;
.super Lcom/kms/menu/KisMenuButton;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Luv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Luv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Luz;)V
    .locals 3

    .prologue
    .line 12
    const v0, 0x7f070038

    const v1, 0x7f0200cf

    sget-object v2, Lcom/kms/menu/KisMenuButton$ButtonId;->CALL_SMS_STATUS_MENU_BUTTON:Lcom/kms/menu/KisMenuButton$ButtonId;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kms/menu/KisMenuButton;-><init>(Luz;IILcom/kms/menu/KisMenuButton$ButtonId;)V

    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Luv;->f()Luz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luz;->a(I)V

    .line 18
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lqq;->b()Z

    move-result v0

    return v0
.end method
